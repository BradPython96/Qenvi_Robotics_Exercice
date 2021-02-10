// Auto-generated. Do not edit!

// (in-package commande.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class commandType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rayon = null;
      this.demi_ecart = null;
      this.u = null;
      this.w = null;
    }
    else {
      if (initObj.hasOwnProperty('rayon')) {
        this.rayon = initObj.rayon
      }
      else {
        this.rayon = 0.0;
      }
      if (initObj.hasOwnProperty('demi_ecart')) {
        this.demi_ecart = initObj.demi_ecart
      }
      else {
        this.demi_ecart = 0.0;
      }
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = 0.0;
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type commandType
    // Serialize message field [rayon]
    bufferOffset = _serializer.float64(obj.rayon, buffer, bufferOffset);
    // Serialize message field [demi_ecart]
    bufferOffset = _serializer.float64(obj.demi_ecart, buffer, bufferOffset);
    // Serialize message field [u]
    bufferOffset = _serializer.float64(obj.u, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.float64(obj.w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type commandType
    let len;
    let data = new commandType(null);
    // Deserialize message field [rayon]
    data.rayon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [demi_ecart]
    data.demi_ecart = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u]
    data.u = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'commande/commandType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4074ebba24351b6cc4dea7efb1a4d48f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 rayon
    float64 demi_ecart
    float64 u
    float64 w
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new commandType(null);
    if (msg.rayon !== undefined) {
      resolved.rayon = msg.rayon;
    }
    else {
      resolved.rayon = 0.0
    }

    if (msg.demi_ecart !== undefined) {
      resolved.demi_ecart = msg.demi_ecart;
    }
    else {
      resolved.demi_ecart = 0.0
    }

    if (msg.u !== undefined) {
      resolved.u = msg.u;
    }
    else {
      resolved.u = 0.0
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0.0
    }

    return resolved;
    }
};

module.exports = commandType;
