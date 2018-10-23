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

class WheelCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel1 = null;
      this.vel2 = null;
      this.vel3 = null;
      this.vel4 = null;
      this.vel5 = null;
      this.vel6 = null;
    }
    else {
      if (initObj.hasOwnProperty('vel1')) {
        this.vel1 = initObj.vel1
      }
      else {
        this.vel1 = 0.0;
      }
      if (initObj.hasOwnProperty('vel2')) {
        this.vel2 = initObj.vel2
      }
      else {
        this.vel2 = 0.0;
      }
      if (initObj.hasOwnProperty('vel3')) {
        this.vel3 = initObj.vel3
      }
      else {
        this.vel3 = 0.0;
      }
      if (initObj.hasOwnProperty('vel4')) {
        this.vel4 = initObj.vel4
      }
      else {
        this.vel4 = 0.0;
      }
      if (initObj.hasOwnProperty('vel5')) {
        this.vel5 = initObj.vel5
      }
      else {
        this.vel5 = 0.0;
      }
      if (initObj.hasOwnProperty('vel6')) {
        this.vel6 = initObj.vel6
      }
      else {
        this.vel6 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelCommandRequest
    // Serialize message field [vel1]
    bufferOffset = _serializer.float32(obj.vel1, buffer, bufferOffset);
    // Serialize message field [vel2]
    bufferOffset = _serializer.float32(obj.vel2, buffer, bufferOffset);
    // Serialize message field [vel3]
    bufferOffset = _serializer.float32(obj.vel3, buffer, bufferOffset);
    // Serialize message field [vel4]
    bufferOffset = _serializer.float32(obj.vel4, buffer, bufferOffset);
    // Serialize message field [vel5]
    bufferOffset = _serializer.float32(obj.vel5, buffer, bufferOffset);
    // Serialize message field [vel6]
    bufferOffset = _serializer.float32(obj.vel6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelCommandRequest
    let len;
    let data = new WheelCommandRequest(null);
    // Deserialize message field [vel1]
    data.vel1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel2]
    data.vel2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel3]
    data.vel3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel4]
    data.vel4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel5]
    data.vel5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel6]
    data.vel6 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_workbench_msgs/WheelCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0278bfb5ea9e6dcc5ff74346c66c1661';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float32 vel1
    float32 vel2
    float32 vel3
    float32 vel4
    float32 vel5
    float32 vel6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelCommandRequest(null);
    if (msg.vel1 !== undefined) {
      resolved.vel1 = msg.vel1;
    }
    else {
      resolved.vel1 = 0.0
    }

    if (msg.vel2 !== undefined) {
      resolved.vel2 = msg.vel2;
    }
    else {
      resolved.vel2 = 0.0
    }

    if (msg.vel3 !== undefined) {
      resolved.vel3 = msg.vel3;
    }
    else {
      resolved.vel3 = 0.0
    }

    if (msg.vel4 !== undefined) {
      resolved.vel4 = msg.vel4;
    }
    else {
      resolved.vel4 = 0.0
    }

    if (msg.vel5 !== undefined) {
      resolved.vel5 = msg.vel5;
    }
    else {
      resolved.vel5 = 0.0
    }

    if (msg.vel6 !== undefined) {
      resolved.vel6 = msg.vel6;
    }
    else {
      resolved.vel6 = 0.0
    }

    return resolved;
    }
};

class WheelCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result1 = null;
      this.result2 = null;
      this.result3 = null;
      this.result4 = null;
      this.result5 = null;
      this.result6 = null;
    }
    else {
      if (initObj.hasOwnProperty('result1')) {
        this.result1 = initObj.result1
      }
      else {
        this.result1 = false;
      }
      if (initObj.hasOwnProperty('result2')) {
        this.result2 = initObj.result2
      }
      else {
        this.result2 = false;
      }
      if (initObj.hasOwnProperty('result3')) {
        this.result3 = initObj.result3
      }
      else {
        this.result3 = false;
      }
      if (initObj.hasOwnProperty('result4')) {
        this.result4 = initObj.result4
      }
      else {
        this.result4 = false;
      }
      if (initObj.hasOwnProperty('result5')) {
        this.result5 = initObj.result5
      }
      else {
        this.result5 = false;
      }
      if (initObj.hasOwnProperty('result6')) {
        this.result6 = initObj.result6
      }
      else {
        this.result6 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelCommandResponse
    // Serialize message field [result1]
    bufferOffset = _serializer.bool(obj.result1, buffer, bufferOffset);
    // Serialize message field [result2]
    bufferOffset = _serializer.bool(obj.result2, buffer, bufferOffset);
    // Serialize message field [result3]
    bufferOffset = _serializer.bool(obj.result3, buffer, bufferOffset);
    // Serialize message field [result4]
    bufferOffset = _serializer.bool(obj.result4, buffer, bufferOffset);
    // Serialize message field [result5]
    bufferOffset = _serializer.bool(obj.result5, buffer, bufferOffset);
    // Serialize message field [result6]
    bufferOffset = _serializer.bool(obj.result6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelCommandResponse
    let len;
    let data = new WheelCommandResponse(null);
    // Deserialize message field [result1]
    data.result1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result2]
    data.result2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result3]
    data.result3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result4]
    data.result4 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result5]
    data.result5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result6]
    data.result6 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_workbench_msgs/WheelCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6704d4d300d80107c044b1b9876947c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result1
    bool result2
    bool result3
    bool result4
    bool result5
    bool result6
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelCommandResponse(null);
    if (msg.result1 !== undefined) {
      resolved.result1 = msg.result1;
    }
    else {
      resolved.result1 = false
    }

    if (msg.result2 !== undefined) {
      resolved.result2 = msg.result2;
    }
    else {
      resolved.result2 = false
    }

    if (msg.result3 !== undefined) {
      resolved.result3 = msg.result3;
    }
    else {
      resolved.result3 = false
    }

    if (msg.result4 !== undefined) {
      resolved.result4 = msg.result4;
    }
    else {
      resolved.result4 = false
    }

    if (msg.result5 !== undefined) {
      resolved.result5 = msg.result5;
    }
    else {
      resolved.result5 = false
    }

    if (msg.result6 !== undefined) {
      resolved.result6 = msg.result6;
    }
    else {
      resolved.result6 = false
    }

    return resolved;
    }
};

module.exports = {
  Request: WheelCommandRequest,
  Response: WheelCommandResponse,
  md5sum() { return 'baceffa34ff35ffa84b373eb230d842b'; },
  datatype() { return 'dynamixel_workbench_msgs/WheelCommand'; }
};
