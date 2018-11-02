#ifndef POSITION_H
#define POSITION_H

#include "ros/ros.h"
#include <vector>

#include <dynamixel_workbench_msgs/JointCommand.h>
#include <dynamixel_workbench_msgs/WheelCommand.h>
#include <dynamixel_workbench_msgs/DynamixelStateList.h>
#include <dynamixel_workbench_msgs/Input2Val.h>
#include <dynamixel_workbench_msgs/MovingCommand.h>
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
	ros::Publisher pub_dynamixel_move;

	// ROS Topic Subscriber
	ros::Subscriber sub_dynamixel_state;
	ros::Subscriber sub_keydown;

	// ROS Service Client
	// ros::ServiceClient input_2_val_client;
	// ros::ServiceClient joint_command_client;

	// dynamixel workbench jointcommand
	// dynamixel_workbench_msgs::JointCommand joint_command;
	dynamixel_workbench_msgs::MovingCommand move_command;

	// dynamixel workbench input2val
	// dynamixel_workbench_msgs::Input2Val input;

	bool wave_hand_counter;


	public:
	int joint_value[6];
	Position();
	void stateCB(const dynamixel_workbench_msgs::DynamixelStateList& msg);
	void keydownCB(const keyboard::Key& msg);
	void Home();
	void moveDynamixelCommand(int id, float deg, float speed);
	void feedbackSpeedAdjustment();
	void WaveHand();
	void Walk();
	void Elbow();
	int current_position[6];
};


#endif
