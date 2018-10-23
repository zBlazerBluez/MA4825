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

class Input2ValRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.radian = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('radian')) {
        this.radian = initObj.radian
      }
      else {
        this.radian = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Input2ValRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [radian]
    bufferOffset = _serializer.float32(obj.radian, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Input2ValRequest
    let len;
    let data = new Input2ValRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [radian]
    data.radian = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_workbench_msgs/Input2ValRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25761d1ec2cfb824f8c0233246eb6301';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    uint8 id
    float32 radian
    float32 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Input2ValRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.radian !== undefined) {
      resolved.radian = msg.radian;
    }
    else {
      resolved.radian = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

class Input2ValResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radian_result = null;
      this.speed_result = null;
    }
    else {
      if (initObj.hasOwnProperty('radian_result')) {
        this.radian_result = initObj.radian_result
      }
      else {
        this.radian_result = 0;
      }
      if (initObj.hasOwnProperty('speed_result')) {
        this.speed_result = initObj.speed_result
      }
      else {
        this.speed_result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Input2ValResponse
    // Serialize message field [radian_result]
    bufferOffset = _serializer.uint32(obj.radian_result, buffer, bufferOffset);
    // Serialize message field [speed_result]
    bufferOffset = _serializer.uint32(obj.speed_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Input2ValResponse
    let len;
    let data = new Input2ValResponse(null);
    // Deserialize message field [radian_result]
    data.radian_result = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [speed_result]
    data.speed_result = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_workbench_msgs/Input2ValResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f01e63b64de7d34d6bc0ed904f63ad06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 radian_result
    uint32 speed_result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Input2ValResponse(null);
    if (msg.radian_result !== undefined) {
      resolved.radian_result = msg.radian_result;
    }
    else {
      resolved.radian_result = 0
    }

    if (msg.speed_result !== undefined) {
      resolved.speed_result = msg.speed_result;
    }
    else {
      resolved.speed_result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: Input2ValRequest,
  Response: Input2ValResponse,
  md5sum() { return 'a3b31596b7fcac5dd211a0ad0eb13680'; },
  datatype() { return 'dynamixel_workbench_msgs/Input2Val'; }
};
