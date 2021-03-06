/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library xkcm.src.digest_authorization_res;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:xkcm/xkcm.dart';

class DigestAuthorizationRes implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("DigestAuthorizationRes");
  static final TField _CLIENT_ID_FIELD_DESC = new TField("clientId", TType.STRING, 1);
  static final TField _INITIAL_TOKEN_FIELD_DESC = new TField("initialToken", TType.STRING, 2);
  static final TField _INITIAL_COUNT_FIELD_DESC = new TField("initialCount", TType.I32, 3);
  static final TField _RES_SIGN_FIELD_DESC = new TField("resSign", TType.STRING, 4);
  static final TField _AUTH_TTL_FIELD_DESC = new TField("authTtl", TType.I32, 5);

  String _clientId;
  static const int CLIENTID = 1;
  String _initialToken;
  static const int INITIALTOKEN = 2;
  int _initialCount = 0;
  static const int INITIALCOUNT = 3;
  String _resSign;
  static const int RESSIGN = 4;
  int _authTtl = 0;
  static const int AUTHTTL = 5;

  bool __isset_initialCount = false;
  bool __isset_authTtl = false;

  DigestAuthorizationRes() {
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

  // initialToken
  String get initialToken => this._initialToken;

  set initialToken(String initialToken) {
    this._initialToken = initialToken;
  }

  bool isSetInitialToken() => this.initialToken != null;

  unsetInitialToken() {
    this.initialToken = null;
  }

  // initialCount
  int get initialCount => this._initialCount;

  set initialCount(int initialCount) {
    this._initialCount = initialCount;
    this.__isset_initialCount = true;
  }

  bool isSetInitialCount() => this.__isset_initialCount;

  unsetInitialCount() {
    this.__isset_initialCount = false;
  }

  // resSign
  String get resSign => this._resSign;

  set resSign(String resSign) {
    this._resSign = resSign;
  }

  bool isSetResSign() => this.resSign != null;

  unsetResSign() {
    this.resSign = null;
  }

  // authTtl
  int get authTtl => this._authTtl;

  set authTtl(int authTtl) {
    this._authTtl = authTtl;
    this.__isset_authTtl = true;
  }

  bool isSetAuthTtl() => this.__isset_authTtl;

  unsetAuthTtl() {
    this.__isset_authTtl = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case CLIENTID:
        return this.clientId;
      case INITIALTOKEN:
        return this.initialToken;
      case INITIALCOUNT:
        return this.initialCount;
      case RESSIGN:
        return this.resSign;
      case AUTHTTL:
        return this.authTtl;
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

      case INITIALTOKEN:
        if (value == null) {
          unsetInitialToken();
        } else {
          this.initialToken = value;
        }
        break;

      case INITIALCOUNT:
        if (value == null) {
          unsetInitialCount();
        } else {
          this.initialCount = value;
        }
        break;

      case RESSIGN:
        if (value == null) {
          unsetResSign();
        } else {
          this.resSign = value;
        }
        break;

      case AUTHTTL:
        if (value == null) {
          unsetAuthTtl();
        } else {
          this.authTtl = value;
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
      case INITIALTOKEN:
        return isSetInitialToken();
      case INITIALCOUNT:
        return isSetInitialCount();
      case RESSIGN:
        return isSetResSign();
      case AUTHTTL:
        return isSetAuthTtl();
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
        case INITIALTOKEN:
          if (field.type == TType.STRING) {
            this.initialToken = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case INITIALCOUNT:
          if (field.type == TType.I32) {
            this.initialCount = iprot.readI32();
            this.__isset_initialCount = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case RESSIGN:
          if (field.type == TType.STRING) {
            this.resSign = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case AUTHTTL:
          if (field.type == TType.I32) {
            this.authTtl = iprot.readI32();
            this.__isset_authTtl = true;
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
    if (this.initialToken != null) {
      oprot.writeFieldBegin(_INITIAL_TOKEN_FIELD_DESC);
      oprot.writeString(this.initialToken);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_INITIAL_COUNT_FIELD_DESC);
    oprot.writeI32(this.initialCount);
    oprot.writeFieldEnd();
    if (this.resSign != null) {
      oprot.writeFieldBegin(_RES_SIGN_FIELD_DESC);
      oprot.writeString(this.resSign);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_AUTH_TTL_FIELD_DESC);
    oprot.writeI32(this.authTtl);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("DigestAuthorizationRes(");

    ret.write("clientId:");
    if (this.clientId == null) {
      ret.write("null");
    } else {
      ret.write(this.clientId);
    }

    ret.write(", ");
    ret.write("initialToken:");
    if (this.initialToken == null) {
      ret.write("null");
    } else {
      ret.write(this.initialToken);
    }

    ret.write(", ");
    ret.write("initialCount:");
    ret.write(this.initialCount);

    ret.write(", ");
    ret.write("resSign:");
    if (this.resSign == null) {
      ret.write("null");
    } else {
      ret.write(this.resSign);
    }

    ret.write(", ");
    ret.write("authTtl:");
    ret.write(this.authTtl);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

