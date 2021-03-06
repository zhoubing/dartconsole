/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library xkcm.src.digest_authentication_req;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:xkcm/xkcm.dart';

class DigestAuthenticationReq implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("DigestAuthenticationReq");
  static final TField _CLIENT_ID_FIELD_DESC = new TField("clientId", TType.STRING, 1);
  static final TField _CLIENT_COUNT_FIELD_DESC = new TField("clientCount", TType.I64, 2);
  static final TField _CLIENT_RANDOM_FIELD_DESC = new TField("clientRandom", TType.STRING, 3);
  static final TField _ACCESS_TOKEN_FIELD_DESC = new TField("accessToken", TType.STRING, 4);

  String _clientId;
  static const int CLIENTID = 1;
  int _clientCount = 0;
  static const int CLIENTCOUNT = 2;
  String _clientRandom;
  static const int CLIENTRANDOM = 3;
  String _accessToken;
  static const int ACCESSTOKEN = 4;

  bool __isset_clientCount = false;

  DigestAuthenticationReq() {
  }

  // clientId
  String get clientId => this._clientId;

  set clientId(String clientId) {
    this._clientId = clientId;
  }

  bool isSetClientId() => this.clientId != null;

  unsetClientId() {
    this.clientId = null;
  }

  // clientCount
  int get clientCount => this._clientCount;

  set clientCount(int clientCount) {
    this._clientCount = clientCount;
    this.__isset_clientCount = true;
  }

  bool isSetClientCount() => this.__isset_clientCount;

  unsetClientCount() {
    this.__isset_clientCount = false;
  }

  // clientRandom
  String get clientRandom => this._clientRandom;

  set clientRandom(String clientRandom) {
    this._clientRandom = clientRandom;
  }

  bool isSetClientRandom() => this.clientRandom != null;

  unsetClientRandom() {
    this.clientRandom = null;
  }

  // accessToken
  String get accessToken => this._accessToken;

  set accessToken(String accessToken) {
    this._accessToken = accessToken;
  }

  bool isSetAccessToken() => this.accessToken != null;

  unsetAccessToken() {
    this.accessToken = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case CLIENTID:
        return this.clientId;
      case CLIENTCOUNT:
        return this.clientCount;
      case CLIENTRANDOM:
        return this.clientRandom;
      case ACCESSTOKEN:
        return this.accessToken;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case CLIENTID:
        if (value == null) {
          unsetClientId();
        } else {
          this.clientId = value;
        }
        break;

      case CLIENTCOUNT:
        if (value == null) {
          unsetClientCount();
        } else {
          this.clientCount = value;
        }
        break;

      case CLIENTRANDOM:
        if (value == null) {
          unsetClientRandom();
        } else {
          this.clientRandom = value;
        }
        break;

      case ACCESSTOKEN:
        if (value == null) {
          unsetAccessToken();
        } else {
          this.accessToken = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case CLIENTID:
        return isSetClientId();
      case CLIENTCOUNT:
        return isSetClientCount();
      case CLIENTRANDOM:
        return isSetClientRandom();
      case ACCESSTOKEN:
        return isSetAccessToken();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case CLIENTID:
          if (field.type == TType.STRING) {
            this.clientId = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CLIENTCOUNT:
          if (field.type == TType.I64) {
            this.clientCount = iprot.readI64();
            this.__isset_clientCount = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CLIENTRANDOM:
          if (field.type == TType.STRING) {
            this.clientRandom = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ACCESSTOKEN:
          if (field.type == TType.STRING) {
            this.accessToken = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.clientId != null) {
      oprot.writeFieldBegin(_CLIENT_ID_FIELD_DESC);
      oprot.writeString(this.clientId);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_CLIENT_COUNT_FIELD_DESC);
    oprot.writeI64(this.clientCount);
    oprot.writeFieldEnd();
    if (this.clientRandom != null) {
      oprot.writeFieldBegin(_CLIENT_RANDOM_FIELD_DESC);
      oprot.writeString(this.clientRandom);
      oprot.writeFieldEnd();
    }
    if (this.accessToken != null) {
      oprot.writeFieldBegin(_ACCESS_TOKEN_FIELD_DESC);
      oprot.writeString(this.accessToken);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("DigestAuthenticationReq(");

    ret.write("clientId:");
    if (this.clientId == null) {
      ret.write("null");
    } else {
      ret.write(this.clientId);
    }

    ret.write(", ");
    ret.write("clientCount:");
    ret.write(this.clientCount);

    ret.write(", ");
    ret.write("clientRandom:");
    if (this.clientRandom == null) {
      ret.write("null");
    } else {
      ret.write(this.clientRandom);
    }

    ret.write(", ");
    ret.write("accessToken:");
    if (this.accessToken == null) {
      ret.write("null");
    } else {
      ret.write(this.accessToken);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

