#include "ros/ros.h"
#include "my_dynamixel_workbench_tutorial/position.h"
#include "dynamixel_workbench_controllers/position_control.h"
#include <dynamixel_workbench_msgs/JointCommand.h>
#include <dynamixel_workbench_msgs/WheelCommand.h>
#include <dynamixel_workbench_msgs/DynamixelStateList.h>
#include "sensor_msgs/JointState.h"
#include "std_msgs/String.h"
#include <dynamixel_workbench_msgs/MovingCommand.h>
#include <string>
#include <iostream>
#include <sstream>


using namespace std;

float example[6][9] = {
        {300,350,400,450,500,550,600,650,700},
        {300,350,400,450,500,550,600,650,700},
        {300,350,400,450,500,550,600,650,700},
        {300,350,400,450,500,550,600,650,700},
        {300,350,400,450,500,550,600,650,700},
        {300,350,400,450,500,550,600,650,700}
};

float walk[6][4] = {
        {320,520,720,520},
        {520,220,520,820},
        {0,0,0,0},
        {0,0,0,0},
        {511,511,511,511},
        {820,520,220,520},
};

float wave[6][4] = {
        {600,400,800,520},
        {600,400,620,820},
        {600,400,600,400},
        {600,400,600,400},
        {400,450,500,550},
        {700,600,500,400},
};

float elbow[6][4] = {
        {320,520,720,520},
        {520,220,520,820},
        {400,450,500,550},
        {700,600,500,400},
        {420,520,620,520},
        {520,420,520,620},
};

int idx = 0;
bool move_idx = false;
float goal_pos[6] = {0, 0, 0, 0, 0, 0};


Position::Position(){
    // Initialize ROS Publisher
    pub_dynamixel_move = n.advertise<dynamixel_workbench_msgs::MovingCommand>("move_command", 1000);
    // Initialize ROS Subscriber
    // sub_dynamixel_state = n.subscribe("dynamixel_state", 1000, &Position::stateCB, this);
    sub_keydown = n.subscribe("/keyboard/keydown", 1000, &Position::keydownCB, this);

    // Initialize ROS Service Client
    // input_2_val_client = n.serviceClient<dynamixel_workbench_msgs::Input2Val>("input_2_val");
    // joint_command_client = n.serviceClient<dynamixel_workbench_msgs::JointCommand>("joint_command");

        for (int i = 0; i < 6; i++){
        joint_value[i] = 500;
    }

    cout << "At constructor" << endl;
    // wave_hand_counter = false;
}

void Position::keydownCB(const keyboard::Key& msg){
    int code = (int)msg.code;
    int modifiers = (int)msg.modifiers;
    int i = 0;
    int change = 1;
    int speed = 30;
    cout << "Received a key\n";
    switch (code){
        case 113:
            i = 0;
            break;
        case 119:
            i = 1;
            break;
        case 101:
            i = 2;
            break;
        case 117:
            i = 3;
            break;
        case 105:
            i = 4;
            break;
        case 111:
            i = 5;
            break;
        case 97:
            i = 0;
            change = -1;
            break;
        case 115:
            i = 1;
            change = -1;
            break;
        case 100:
            i = 2;
            change = -1;
            break;
        case 106:
            i = 3;
            change = -1;
            break;
        case 107:
            i = 4;
            change = -1;
            break;
        case 108:
            i = 5;
            change = -1;
            break;
        default:
            return;
    }
    joint_value[i] += speed*change;
    if (joint_value[i] > 900 or joint_value[i] < 100){
        joint_value[i] -= speed*change;
    }
    cout << "Moving to " << i << " " << joint_value[i] << "\n";
    moveDynamixelCommand(i + 1, joint_value[i], 300);
}

void Position::stateCB(const dynamixel_workbench_msgs::DynamixelStateList& msg){
    for (int i = 0; i < 6; i++)
    current_position[i] = msg.dynamixel_state[i].present_position;

}

void Position::Home(){
    // Home position
    for(int i = 0; i < 6; i++){
        cout << "Move Motor #";
        cout << i;
        cout << " To Home" << endl;
        if (i == 2) {
            move_command.id = i + 1;
            move_command.goal_position = 0.0;
            move_command.speed = 200.0;
            move_command.to_send_command = true;
            pub_dynamixel_move.publish(move_command);
        }
        else if (i == 3){
            move_command.id = i + 1;
            move_command.goal_position = 200.0;
            move_command.speed = 200.0;
            move_command.to_send_command = true;
            pub_dynamixel_move.publish(move_command);
        }
        else {
            move_command.id = i + 1;
            move_command.goal_position = 511.0;
            move_command.speed = 200.0;
            move_command.to_send_command = true;
            pub_dynamixel_move.publish(move_command);
        }
    }
}

void Position::moveDynamixelCommand(int id, float deg, float speed){
    move_command.id = id;
    move_command.goal_position = deg;
    move_command.speed = speed;
    pub_dynamixel_move.publish(move_command); 
}

void Position::feedbackSpeedAdjustment(){

}

void Position::WaveHand(){
    for (int i = 2; i < 4; i++){
        cout << "Move Motor #";
        cout << i;
        cout << " To ";
        cout << goal_pos[i] << endl;

        goal_pos[i] = wave[i][idx];
        
        move_command.id = i + 1;
        move_command.goal_position = goal_pos[i];
        move_command.speed = 100;//speed_converter(current_position[i], goal_pos[i], 1.5);
        move_command.to_send_command = true;

        pub_dynamixel_move.publish(move_command);
    }
    /*move_command.id = 4;
    move_command.goal_position = 700.0;
    move_command.speed = 200.0;
    move_command.to_send_command = true;
    pub_dynamixel_move.publish(move_command);*/
    wave_hand_counter = true;

    move_idx = false;

    idx++;
    if (idx == 4) {
        idx = 0;
    }
    
}

void Position::Walk(){
    for (int i = 0; i < 6; i++){
        cout << "Move Motor #";
        cout << i;
        cout << " To ";
        cout << goal_pos[i] << endl;

        goal_pos[i] = walk[i][idx];
        
        move_command.id = i + 1;
        move_command.goal_position = goal_pos[i];
        if (i == 0)
            move_command.speed = 150;//speed_converter(current_position[i], goal_pos[i], 1.5);
        else if (i == 1)
            move_command.speed = 150*1.5;
        else if (i==5)
            move_command.speed = 150*1.5;
        else
            move_command.speed = 100;
        move_command.to_send_command = true;

        pub_dynamixel_move.publish(move_command);
    }

    move_idx = false;

    idx++;
    if (idx == 4) {
        idx = 0;
    }
}

void Position::Elbow(){
    for (int i = 4; i < 6; i++){
        cout << "Move Motor #";
        cout << i;
        cout << " To ";
        cout << goal_pos[i] << endl;

        goal_pos[i] = elbow[i][idx];
        
        move_command.id = i + 1;
        move_command.goal_position = goal_pos[i];
        move_command.speed = 100;//speed_converter(current_position[i], goal_pos[i], 1.5);
        move_command.to_send_command = true;

        pub_dynamixel_move.publish(move_command);
    }
    /*move_command.id = 4;
    move_command.goal_position = 700.0;
    move_command.speed = 200.0;
    move_command.to_send_command = true;
    pub_dynamixel_move.publish(move_command);*/
    wave_hand_counter = true;

    move_idx = false;

    idx++;
    if (idx == 4) {
        idx = 0;
    }
}

int main(int argc, char **argv){
    ros::init(argc, argv, "ma4825");

    Position position_object;
    ros::Duration(1).sleep();
    position_object.Home();
    ros::Duration(3).sleep();
    
    // position_object.WaveHand();
    //position_object.Walk();

    // for (int i=0;i<1000;i++){
    //     if (i%4==0){
    //         position_object.moveDynamixelCommand(1, 600, 100);
    //         ros::Duration(1).sleep();
    //     }
    //     if (i%4==1){
    //         position_object.moveDynamixelCommand(2, 800, 300);

    //         ros::Duration(1).sleep();
    //     }
    //     if (i%4==2){
    //         position_object.moveDynamixelCommand(1, 400, 100);
    //         ros::Duration(1).sleep();
    //     }
    //     if (i%4==3){
    //         position_object.moveDynamixelCommand(2, 200, 300);
    //         ros::Duration(1).sleep();
    //     }
    // }

     ros::Rate r(0.9); // 2hz, period = 0.5s

    // ros::spin();
     while(ros::ok){
        // position_object.Walk();
        // r.sleep();
        ros::spinOnce();
     }

}

