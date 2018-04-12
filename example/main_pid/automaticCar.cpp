/**
    This code runs our car automatically and log video, controller (optional)
    Line detection method: Canny
    Targer point: vanishing point
    Control: pca9685
    
    You should understand this code run to image how we can make this car works from image processing coder's perspective.
    Image processing methods used are very simple, your task is optimize it.
    Besure you set throttle val to 0 before end process. If not, you should stop the car by hand.
    In our experience, if you accidental end the processing and didn't stop the car, you may catch it and switch off the controller physically or run the code again (press up direction button then enter).
**/
#include "header.h"
#include "image_processing.h"
#include "lane_detection.h"
#include "sign.h"
#include "control.h"

bool flagTurn = false;
int dirTurn = 0;
Mat colorImg;
bool endThread = true;
bool getFrame = false;

int preDetect = NO_SIGN;
int countDetect = 0;
int detectLeft = 0;
int detectRight = 0;
int set_throttle_val = 0;
int throttle_config = 0;
bool test_obt = false;
PCA9685 *pca9685 = new PCA9685();

///////// utilitie functions  ///////////////////////////
int main(int argc, char *argv[])
{
    // Setup input
    int sw1_stat = 1;
    int sw2_stat = 1;
    int sw3_stat = 1;
    int sw4_stat = 1;
    int sensor = 0;
    
    GPIO *gpio = new GPIO();
    gpio->gpioExport(SW1_PIN);
    gpio->gpioExport(SW2_PIN);
    gpio->gpioExport(SW3_PIN);
    gpio->gpioExport(SW4_PIN);
    gpio->gpioExport(SENSOR);
    gpio->gpioSetDirection(SW1_PIN, INPUT);
    gpio->gpioSetDirection(SW2_PIN, INPUT);
    gpio->gpioSetDirection(SW3_PIN, INPUT);
    gpio->gpioSetDirection(SW4_PIN, INPUT);
    gpio->gpioSetDirection(SENSOR, INPUT);
    
    usleep(10000);

    /// Init openNI ///
    Status rc;
    Device device;

    VideoStream depth, color;
    rc = OpenNI::initialize();
    if (rc != STATUS_OK)
    {
        printf("Initialize failed\n%s\n", OpenNI::getExtendedError());
        return 0;
    }
    rc = device.open(ANY_DEVICE);
    if (rc != STATUS_OK)
        return 0;

    // depth video stream init
    if (device.getSensorInfo(SENSOR_DEPTH) != NULL)
    {
        rc = depth.create(device, SENSOR_DEPTH);
        if (rc == STATUS_OK)
        {
            VideoMode depth_mode = depth.getVideoMode();
            depth_mode.setFps(30);    
            printf("Couldn't open device\n%s\n", OpenNI::getExtendedError());

            depth_mode.setResolution(FRAME_WIDTH, FRAME_HEIGHT);
            depth_mode.setPixelFormat(PIXEL_FORMAT_DEPTH_100_UM);
            depth.setVideoMode(depth_mode);

            rc = depth.start();
            if (rc != STATUS_OK)
            {
                printf("Couldn't start the color stream\n%s\n", OpenNI::getExtendedError());
            }
        }
        else
        {
            printf("Couldn't create depth stream\n%s\n", OpenNI::getExtendedError());
        }
    }

    // color video stream init
    if (device.getSensorInfo(SENSOR_COLOR) != NULL)
    {
        rc = color.create(device, SENSOR_COLOR);
        if (rc == STATUS_OK)
        {
            VideoMode color_mode = color.getVideoMode();
            color_mode.setFps(30);
            color_mode.setResolution(FRAME_WIDTH, FRAME_HEIGHT);
            color_mode.setPixelFormat(PIXEL_FORMAT_RGB888);
            color.setVideoMode(color_mode);

            rc = color.start();
            if (rc != STATUS_OK)
            {
                printf("Couldn't start the color stream\n%s\n", OpenNI::getExtendedError());
            }
        }
        else
        {
            printf("Couldn't create color stream\n%s\n", OpenNI::getExtendedError());
        }
    }

    VideoFrameRef frame_depth, frame_color;
    VideoStream *streams[] = {&depth, &color};
    /// End of openNI init phase ///

    /// Init video writer and log files ///
    bool is_save_file = true; // set is_save_file = true if you want to log video and i2c pwm coeffs.
    VideoWriter depth_videoWriter;
    VideoWriter color_videoWriter;
    VideoWriter gray_videoWriter;

    string gray_filename = "gray.avi";
    string color_filename = "color.avi";
    string depth_filename = "depth.avi";

    Mat depthImg, binImage, grayImg, signMask, hsv;

    int codec = CV_FOURCC('M', 'J', 'P', 'G');
    Size output_size(FRAME_WIDTH, FRAME_HEIGHT);

    FILE *thetaLogFile; // File creates log of signal send to pwm control
    if (is_save_file)
    {
        gray_videoWriter.open(gray_filename, codec, 8, output_size, false);
        color_videoWriter.open(color_filename, codec, 8, output_size, true);
        depth_videoWriter.open(depth_filename, codec, 8, output_size, false);
        thetaLogFile = fopen("thetaLog.txt", "w");
    }
    /// End of init logs phase ///

    Sign mySign;
    int dir = 0, throttle_val = 0;
    double theta = 0;
    int current_state = 0;
    char key = 0;

    //=========== Init  =======================================================

    ////////  Init PCA9685 driver   ///////////////////////////////////////////
    api_pwm_pca9685_init(pca9685);

    if (pca9685->error >= 0)
        api_set_FORWARD_control(pca9685, throttle_val);
    
    /////////  Init UART here   ///////////////////////////////////////////////
    /// Init MSAC vanishing point library
    MSAC msac;
    api_vanishing_point_init(msac);
    
    Rect roi1 = Rect(0, FRAME_HEIGHT * 3 / 4, FRAME_WIDTH, FRAME_HEIGHT / 4);

    ////////  Init direction and ESC speed  ///////////////////////////
    throttle_val = 0;
    theta = 0;

    // Argc == 2 eg ./test-autocar 27 means initial throttle is 27
    if (argc == 2)
        set_throttle_val = atoi(argv[1]);

    throttle_config = set_throttle_val;
    fprintf(stderr, "Initial throttle: %d\n", set_throttle_val);
    
    Point carPosition(FRAME_WIDTH / 2, FRAME_HEIGHT);
    Point prvPosition = carPosition;

    bool running = false, started = false, stopped = false;

    double st = 0, et = 0, fps = 0;
    double freq = getTickFrequency();

    bool is_show_cam = true;
    int count_s, count_ss;
    int frame_id = 0;
    vector<Vec4i> lines;
    bool oneLine = false;
    int preX = 0;
    int preY = 0;
    bool preLeft = false;
    bool preRight = false;

    int road_width;
    bool road_width_set = false;

    while (true)
    {
        Point center_point(0, 0);
       // Starts(char key, );

        
        st = getTickCount();
        key = getkey();
        unsigned int bt_status = 0;
        gpio->gpioGetValue(SW4_PIN, &bt_status);
        unsigned int sensor_status = 0;
        gpio->gpioGetValue(SENSOR, &sensor_status);
        cout << "sensor: " << sensor_status << endl;
        if (!bt_status)
        {
            if (bt_status != sw4_stat)
            {
                running = !running;
                sw4_stat = bt_status;
                previous = 0;
                intergral = 0;
                throttle_val = 30;
                set_throttle_val = 30;
                road_width_set = false;
                oneLine = false;
            }
        }
        else
            sw4_stat = bt_status;

        gpio->gpioGetValue(SW1_PIN, &bt_status);
        if (!bt_status)
        {
            if (bt_status != sw1_stat)
            {
                running = !running;
                sw1_stat = bt_status;
                throttle_val = 35;
                set_throttle_val = 35;
                road_width_set = false;
                oneLine = false;
            }
        }
        else
            sw1_stat = bt_status;
        if (sensor == 0 && sensor_status == 1)
        {
            running = true;
            throttle_val = set_throttle_val;
            road_width_set = false;
            oneLine = false;
        }
        sensor = sensor_status;
        if (key == 's')
        {
            running = !running;
            throttle_val = set_throttle_val;

            road_width_set = false;
            oneLine = false;
        }
        if (key == 'f')
        {
            fprintf(stderr, "End process.\n");
            theta = 0;
            throttle_val = 0;
            api_set_FORWARD_control(pca9685, throttle_val);
            break;
        }

        if (running)
        {
            cout << "v = " << throttle_val << endl;
            throttle_val = set_throttle_val;
            //// Check PCA9685 driver ////////////////////////////////////////////
            if (pca9685->error < 0)
            {
                cout << endl
                     << "Error: PWM driver" << endl
                     << flush;
                break;
            }
            if (!started)
            {
                fprintf(stderr, "ON\n");
                started = true;
                stopped = false;
                throttle_val = set_throttle_val;
                api_set_FORWARD_control(pca9685, throttle_val);
            }
            int readyStream = -1;
            rc = OpenNI::waitForAnyStream(streams, 2, &readyStream, SAMPLE_READ_WAIT_TIMEOUT);
            if (rc != STATUS_OK)
            {
                printf("Wait failed! (timeout is %d ms)\n%s\n", SAMPLE_READ_WAIT_TIMEOUT, OpenNI::getExtendedError());
                break;
            }

            depth.readFrame(&frame_depth);
            color.readFrame(&frame_color);
            

            frame_id++;
            char recordStatus = analyzeFrame(frame_depth, frame_color, depthImg, colorImg);
            //flip(depthImg, depthImg, 1);
            flip(colorImg, colorImg, 1);
            //imshow("depth", depthImg);







            ////////// Detect Center Point ////////////////////////////////////
            if (recordStatus == 'c')
            {

                
                //////////////////get depth
                int x_Left, x_Right, y_ob, w_ob;
                hist_equalize(colorImg);
                cvtColor(colorImg, hsv, CV_BGR2HSV);
                cvtColor(colorImg, grayImg, CV_BGR2GRAY);
                get_mask(hsv, binImage, "black");
		
		get_mask(hsv, signMask, "blue,red");
                bitwise_not(binImage, binImage);
                imshow("binImage", binImage);
		imshow("signMask", signMask);		
                


		//---------------------- define Sign Traffic
		if(mySign.detect(signMask)){
                    mySign.recognize(grayImg);
                    int signID = mySign.getClassID();
			cout << "signID: " << signID << endl;
			if(signID==1)
				putText(colorImg, "TURN LEFT", Point(60, 60), FONT_HERSHEY_COMPLEX_SMALL, 0.8, Scalar(255, 255, 0), 1, CV_AA);
			else 
			if(signID==2)
				putText(colorImg, "TURN RIGHT", Point(60, 60), FONT_HERSHEY_COMPLEX_SMALL, 0.8, Scalar(255, 255, 0), 1, CV_AA);
			else 
			if(signID==3)
				putText(colorImg, "STOP", Point(60, 60), FONT_HERSHEY_COMPLEX_SMALL, 0.8, Scalar(255, 255, 0), 1, CV_AA);
			
                }
                //GaussianBlur(binImage, binImage, Size(5, 5), 0, 0);
                


		int xTam = 0, yTam = 0;
		//Process Lane to get Point Center

		LaneProcessing(colorImg,binImage,xTam,yTam,preLeft,preRight,oneLine,preX,preY);
		//---------------------- 
		//Can get xTam yTam


                /*if(has_obs) {
			if(obs_x > xTam && obs_x - xTam <= road_width/4) {
				xTam -= road_width/4;	
			}
			else if(obs_x <= xTam && xTam - obs_x <= road_width/4) {
				xTam += road_width/4;	
			}
		}*/

                preX = xTam;
                preY = yTam;
                // if (test_obt == true)
                // {
                //     cout << "remove center point";
                //     PointCenter_Displacement(xTam, x_Left, x_Right);
                // }

                //process angDiff
		double angDiff = 0;

		/////////////////////////////////////////////////////////////////////
                angDiff = getTheta(carPosition, Point(xTam, yTam));
                cout<<"---------------------------"<<getTheta(carPosition, Point(xTam, yTam))<<endl;
                if (-20 < angDiff && angDiff < 20)
                    angDiff = 0;
                theta = -(angDiff * ALPHA);
                
                std::cout << "angdiff: " << angDiff << std::endl;
                // theta = (0.00);
                api_set_STEERING_control(pca9685, theta);
                // if (center_point.x == 0 && center_point.y == 0)
                // {
                //     // modified here: Khong thay duong -> dung
                //     // previous: Khong thay duong -> dung tam duong cu
                //     center_point = prvPosition;
                //     //api_set_STEERING_control(pca9685, 0);
                //     //			api_set_FORWARD_control(pca9685, 0);

                //     // break;
                // }
                // prvPosition = center_point;
            }

            int pwm2 = api_set_FORWARD_control(pca9685, throttle_val);
            et = getTickCount();
            fps = 1.0 / ((et - st) / freq);
            cerr << "FPS: " << fps << '\n';

            if (recordStatus == 'c' && is_save_file)
            {
                // 'Center': target point
                // pwm2: STEERING coefficient that pwm at channel 2 (our steering wheel's channel)
                fprintf(thetaLogFile, "Center: [%d, %d]\n", center_point.x, center_point.y);
                fprintf(thetaLogFile, "pwm2: %d\n", pwm2);

                if (!colorImg.empty())
                    color_videoWriter.write(colorImg);
                if (!binImage.empty())
                    gray_videoWriter.write(binImage);
            }
            if (recordStatus == 'd' && is_save_file)
            {
                //if (!depthImg.empty())
                //depth_videoWriter.write(depthImg);
            }

            //////// using for debug stuff  ///////////////////////////////////
            if (is_show_cam)
            {
                waitKey(1);
            }
            //if (key == 27)
            //    break;
        }
        else
        {
            theta = 0;
            throttle_val = 0;
            if (!stopped)
            {
                fprintf(stderr, "OFF\n");
                stopped = true;
                started = false;
            }
            api_set_FORWARD_control(pca9685, throttle_val);
            sleep(1);
        }
    }
    //////////  Release //////////////////////////////////////////////////////
    if (is_save_file)
    {
        gray_videoWriter.release();
        color_videoWriter.release();
        depth_videoWriter.release();
        fclose(thetaLogFile);
    }
    return 0;
}
