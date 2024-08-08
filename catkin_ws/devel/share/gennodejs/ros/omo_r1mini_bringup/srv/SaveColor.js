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

class SaveColorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red = null;
      this.green = null;
      this.blue = null;
    }
    else {
      if (initObj.hasOwnProperty('red')) {
        this.red = initObj.red
      }
      else {
        this.red = 0;
      }
      if (initObj.hasOwnProperty('green')) {
        this.green = initObj.green
      }
      else {
        this.green = 0;
      }
      if (initObj.hasOwnProperty('blue')) {
        this.blue = initObj.blue
      }
      else {
        this.blue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveColorRequest
    // Serialize message field [red]
    bufferOffset = _serializer.int64(obj.red, buffer, bufferOffset);
    // Serialize message field [green]
    bufferOffset = _serializer.int64(obj.green, buffer, bufferOffset);
    // Serialize message field [blue]
    bufferOffset = _serializer.int64(obj.blue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveColorRequest
    let len;
    let data = new SaveColorRequest(null);
    // Deserialize message field [red]
    data.red = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [green]
    data.green = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [blue]
    data.blue = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'omo_r1mini_bringup/SaveColorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b210d51c86d003e1192527182de7381';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 red
    int64 green
    int64 blue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveColorRequest(null);
    if (msg.red !== undefined) {
      resolved.red = msg.red;
    }
    else {
      resolved.red = 0
    }

    if (msg.green !== undefined) {
      resolved.green = msg.green;
    }
    else {
      resolved.green = 0
    }

    if (msg.blue !== undefined) {
      resolved.blue = msg.blue;
    }
    else {
      resolved.blue = 0
    }

    return resolved;
    }
};

class SaveColorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveColorResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveColorResponse
    let len;
    let data = new SaveColorResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'omo_r1mini_bringup/SaveColorResponse';
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
    const resolved = new SaveColorResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SaveColorRequest,
  Response: SaveColorResponse,
  md5sum() { return '8b210d51c86d003e1192527182de7381'; },
  datatype() { return 'omo_r1mini_bringup/SaveColor'; }
};
