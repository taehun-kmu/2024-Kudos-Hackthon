// Auto-generated. Do not edit!

// (in-package omo_r1mini_bringup.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class BatteryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryRequest
    let len;
    let data = new BatteryRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'omo_r1mini_bringup/BatteryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryRequest(null);
    return resolved;
    }
};

class BatteryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.volt = null;
      this.SOC = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('volt')) {
        this.volt = initObj.volt
      }
      else {
        this.volt = 0.0;
      }
      if (initObj.hasOwnProperty('SOC')) {
        this.SOC = initObj.SOC
      }
      else {
        this.SOC = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryResponse
    // Serialize message field [volt]
    bufferOffset = _serializer.float64(obj.volt, buffer, bufferOffset);
    // Serialize message field [SOC]
    bufferOffset = _serializer.float64(obj.SOC, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float64(obj.current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryResponse
    let len;
    let data = new BatteryResponse(null);
    // Deserialize message field [volt]
    data.volt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SOC]
    data.SOC = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'omo_r1mini_bringup/BatteryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d9c08bbb8192da6b3949691563ecb91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 volt
    float64 SOC
    float64 current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryResponse(null);
    if (msg.volt !== undefined) {
      resolved.volt = msg.volt;
    }
    else {
      resolved.volt = 0.0
    }

    if (msg.SOC !== undefined) {
      resolved.SOC = msg.SOC;
    }
    else {
      resolved.SOC = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: BatteryRequest,
  Response: BatteryResponse,
  md5sum() { return '9d9c08bbb8192da6b3949691563ecb91'; },
  datatype() { return 'omo_r1mini_bringup/Battery'; }
};
