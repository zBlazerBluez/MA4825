#include "ros/ros.h"
#include "my_dynamixel_workbench_tutorial/position.h"
#include "dynamixel_workbench_controllers/position_control.h"
#include <dynamixel_workbench_msgs/JointCommand.h>
#include <dynamixel_workbench_msgs/WheelCommand.h>
#include <dynamixel_workbench_msgs/DynamixelStateList.h>
#include "sensor_msgs/JointState.h"
#include "std_msgs/String.h"
#include <string>
#include <iostream>
#include <sstream>



using namespace std;


Position::Position(){
    // Initialize ROS Publisher

    // Initialize ROS Subscriber
    // sub_dynamixel_state = n.subscribe("dynamixel_state", 1000, &Position::stateCB, this);
    // sub_keyup = n.subscribe("/keyboard/keyup", 1000, &Position::keyupCB, this);
    sub_keydown = n.subscribe("/keyboard/keydown", 1000, &Position::keydownCB, this);

    // Initialize ROS Service Client
    input_2_val_client = n.serviceClient<dynamixel_workbench_msgs::Input2Val>("input_2_val");
    joint_command_client = n.serviceClient<dynamixel_workbench_msgs::JointCommand>("joint_command");
    for (int i = 0; i < 6; i++){
        joint_value[i] = 500;
    }
    sleep(1);
    cout << "At constructor" << endl;
}

void Position::stateCB(const dynamixel_workbench_msgs::DynamixelStateList& msg){
    // std::cout << msg << std::endl;
    if (msg.dynamixel_state[0].present_position == 0){
       moveDynamixelCommand(1, 1000.0, 200.0);
    }
    if (msg.dynamixel_state[0].present_position == 1000){
       moveDynamixelCommand(1, 0.0, 200.0);
    }
}

void Position::keydownCB(const keyboard::Key& msg){
    int code = (int)msg.code;
    int modifiers = (int)msg.modifiers;
    int id = 0;
    int change = 1;
    int speed = 50;
    cout << "Received a key\n";
    switch (code){
        case 113:
            id = 1;
            break;
        case 119:
            id = 2;
            break;
        case 101:
            id = 3;
            break;
        case 117:
            id = 4;
            break;
        case 105:
            id = 5;
            break;
        case 111:
            id = 6;
            break;
        case 97:
            id = 1;
            change = -1;
            break;
        case 115:
            id = 2;
            change = -1;
            break;
        case 100:
            id = 3;
            change = -1;
            break;
        case 106:
            id = 4;
            change = -1;
            break;
        case 107:
            id = 5;
            change = -1;
            break;
        case 108:
            id = 6;
            change = -1;
            break;
        default:
            return;
    }
    joint_value[id] += speed*change;
    if (joint_value[id] > 750 or joint_value[id] < 250){
        joint_value[id] -= speed*change;
    }
    cout << "Moving to " << id << " " << joint_value[id] << "\n";
    moveDynamixelCommand(id, joint_value[id], 800);
}

void Position::Home(){
    // Home position
    for (int i = 0; i < 6; i++){
        moveDynamixelCommand(i + 1, joint_value[i], 800.0);
        usleep(600000);
    }
    // moveDynamixelCommand(1, 0.0, 200.0);
}

void Position::moveDynamixelCommand(int id, float deg, float speed){
    // dynamixel_workbench_msgs::JointCommand joint_command;
    std::cout << "Motion" << std::endl;
    joint_command.request.id = id;
    joint_command.request.goal_position = deg;
    joint_command.request.speed = speed;
    joint_command_client.call(joint_command);
}

int main(int argc, char **argv){
    ros::init(argc, argv, "ma4825");

    Position position_object;

    position_object.Home();

    ros::Rate r(100);
    while(ros::ok){
        ros::spinOnce();
    }
}
