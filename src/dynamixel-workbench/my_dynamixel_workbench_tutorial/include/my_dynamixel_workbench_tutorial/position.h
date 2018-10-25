#ifndef POSITION_H
#define POSITION_H

#include "ros/ros.h"
#include <vector>

#include <dynamixel_workbench_msgs/JointCommand.h>
#include <dynamixel_workbench_msgs/WheelCommand.h>
#include <dynamixel_workbench_msgs/DynamixelStateList.h>
#include <dynamixel_workbench_msgs/Input2Val.h>
#include "sensor_msgs/JointState.h"

#include "std_msgs/String.h"

#include <dynamixel_workbench_toolbox/dynamixel_workbench.h>
#include "dynamixel_workbench_toolbox/dynamixel_driver.h"

#include "keyboard.h"

class Position
{
	private:
	// ROS NodeHandle
  	ros::NodeHandle n;

	// ROS Topic Publisher

	// ROS Topic Subscriber
	ros::Subscriber sub_dynamixel_state;

	ros::Subscriber sub_keyup;
	ros::Subscriber sub_keydown;

	// ROS Service Client
	ros::ServiceClient input_2_val_client;
	ros::ServiceClient joint_command_client;

	// dynamixel workbench jointcommand
	dynamixel_workbench_msgs::JointCommand joint_command;

	// dynamixel workbench input2val
	dynamixel_workbench_msgs::Input2Val input;


	public:
	int joint_value[5];
	Position();
	void stateCB(const dynamixel_workbench_msgs::DynamixelStateList& msg);
	// void keyupCB(const keyboard::Key& msg);
	void keydownCB(const keyboard::Key& msg);
	void Home();
	void moveDynamixelCommand(int id, float deg, float speed);
};


#endif