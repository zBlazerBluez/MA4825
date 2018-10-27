// Auto-generated. Do not edit!

// (in-package dynamixel_workbench_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class JointCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unit = null;
      this.id = null;
      this.goal_position = null;
      this.speed = null;
      this.to_send_command = null;
    }
    else {
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('goal_position')) {
        this.goal_position = initObj.goal_position
      }
      else {
        this.goal_position = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('to_send_command')) {
        this.to_send_command = initObj.to_send_command
      }
      else {
        this.to_send_command = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCommandRequest
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [goal_position]
    bufferOffset = _serializer.float32(obj.goal_position, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [to_send_command]
    bufferOffset = _serializer.bool(obj.to_send_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCommandRequest
    let len;
    let data = new JointCommandRequest(null);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [goal_position]
    data.goal_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [to_send_command]
    data.to_send_command = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.unit.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_workbench_msgs/JointCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb2d04320ad15a39e4def0cfe3574db9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    string unit
    uint8 id
    float32 goal_position
    float32 speed
    bool to_send_command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCommandRequest(null);
    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.goal_position !== undefined) {
      resolved.goal_position = msg.goal_position;
    }
    else {
      resolved.goal_position = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.to_send_command !== undefined) {
      resolved.to_send_command = msg.to_send_command;
    }
    else {
      resolved.to_send_command = false
    }

    return resolved;
    }
};

class JointCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_result = null;
      this.speed_result = null;
    }
    else {
      if (initObj.hasOwnProperty('position_result')) {
        this.position_result = initObj.position_result
      }
      else {
        this.position_result = false;
      }
      if (initObj.hasOwnProperty('speed_result')) {
        this.speed_result = initObj.speed_result
      }
      else {
        this.speed_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCommandResponse
    // Serialize message field [position_result]
    bufferOffset = _serializer.bool(obj.position_result, buffer, bufferOffset);
    // Serialize message field [speed_result]
    bufferOffset = _serializer.bool(obj.speed_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCommandResponse
    let len;
    let data = new JointCommandResponse(null);
    // Deserialize message field [position_result]
    data.position_result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_result]
    data.speed_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_workbench_msgs/JointCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '181b1b3801e118a4aa1620aede17def1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool position_result
    bool speed_result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCommandResponse(null);
    if (msg.position_result !== undefined) {
      resolved.position_result = msg.position_result;
    }
    else {
      resolved.position_result = false
    }

    if (msg.speed_result !== undefined) {
      resolved.speed_result = msg.speed_result;
    }
    else {
      resolved.speed_result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: JointCommandRequest,
  Response: JointCommandResponse,
  md5sum() { return 'c44c2be73cb184aa50f5f371652ee5a2'; },
  datatype() { return 'dynamixel_workbench_msgs/JointCommand'; }
};
