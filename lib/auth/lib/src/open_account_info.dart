/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library auth.src.open_account_info;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:auth/auth.dart';
import 'package:xkcm/xkcm.dart' as t_xkcm;

class OpenAccountInfo implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("OpenAccountInfo");
  static final TField _OPEN_IDTYPE_FIELD_DESC = new TField("openIDType", TType.I32, 1);
  static final TField _UID_FIELD_DESC = new TField("uid", TType.STRING, 2);
  static final TField _USER_NICK_NAME_FIELD_DESC = new TField("userNickName", TType.STRING, 3);
  static final TField _TOKEN_FIELD_DESC = new TField("token", TType.STRING, 4);

  int _openIDType;
  static const int OPENIDTYPE = 1;
  String _uid;
  static const int UID = 2;
  String _userNickName;
  static const int USERNICKNAME = 3;
  String _token;
  static const int TOKEN = 4;

  bool __isset_openIDType = false;

  OpenAccountInfo() {
  }

  // openIDType
  int get openIDType => this._openIDType;

  set openIDType(int openIDType) {
    this._openIDType = openIDType;
    this.__isset_openIDType = true;
  }

  bool isSetOpenIDType() => this.__isset_openIDType;

  unsetOpenIDType() {
    this.__isset_openIDType = false;
  }

  // uid
  String get uid => this._uid;

  set uid(String uid) {
    this._uid = uid;
  }

  bool isSetUid() => this.uid != null;

  unsetUid() {
    this.uid = null;
  }

  // userNickName
  String get userNickName => this._userNickName;

  set userNickName(String userNickName) {
    this._userNickName = userNickName;
  }

  bool isSetUserNickName() => this.userNickName != null;

  unsetUserNickName() {
    this.userNickName = null;
  }

  // token
  String get token => this._token;

  set token(String token) {
    this._token = token;
  }

  bool isSetToken() => this.token != null;

  unsetToken() {
    this.token = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case OPENIDTYPE:
        return this.openIDType;
      case UID:
        return this.uid;
      case USERNICKNAME:
        return this.userNickName;
      case TOKEN:
        return this.token;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case OPENIDTYPE:
        if (value == null) {
          unsetOpenIDType();
        } else {
          this.openIDType = value;
        }
        break;

      case UID:
        if (value == null) {
          unsetUid();
        } else {
          this.uid = value;
        }
        break;

      case USERNICKNAME:
        if (value == null) {
          unsetUserNickName();
        } else {
          this.userNickName = value;
        }
        break;

      case TOKEN:
        if (value == null) {
          unsetToken();
        } else {
          this.token = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case OPENIDTYPE:
        return isSetOpenIDType();
      case UID:
        return isSetUid();
      case USERNICKNAME:
        return isSetUserNickName();
      case TOKEN:
        return isSetToken();
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
        case OPENIDTYPE:
          if (field.type == TType.I32) {
            this.openIDType = iprot.readI32();
            this.__isset_openIDType = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case UID:
          if (field.type == TType.STRING) {
            this.uid = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case USERNICKNAME:
          if (field.type == TType.STRING) {
            this.userNickName = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TOKEN:
          if (field.type == TType.STRING) {
            this.token = iprot.readString();
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
    oprot.writeFieldBegin(_OPEN_IDTYPE_FIELD_DESC);
    oprot.writeI32(this.openIDType);
    oprot.writeFieldEnd();
    if (this.uid != null) {
      oprot.writeFieldBegin(_UID_FIELD_DESC);
      oprot.writeString(this.uid);
      oprot.writeFieldEnd();
    }
    if (this.userNickName != null) {
      oprot.writeFieldBegin(_USER_NICK_NAME_FIELD_DESC);
      oprot.writeString(this.userNickName);
      oprot.writeFieldEnd();
    }
    if (this.token != null) {
      oprot.writeFieldBegin(_TOKEN_FIELD_DESC);
      oprot.writeString(this.token);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("OpenAccountInfo(");

    ret.write("openIDType:");
    String openIDType_name = OpenIDType.VALUES_TO_NAMES[this.openIDType];
    if (openIDType_name != null) {
      ret.write(openIDType_name);
      ret.write(" (");
    }
    ret.write(this.openIDType);
    if (openIDType_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("uid:");
    if (this.uid == null) {
      ret.write("null");
    } else {
      ret.write(this.uid);
    }

    ret.write(", ");
    ret.write("userNickName:");
    if (this.userNickName == null) {
      ret.write("null");
    } else {
      ret.write(this.userNickName);
    }

    ret.write(", ");
    ret.write("token:");
    if (this.token == null) {
      ret.write("null");
    } else {
      ret.write(this.token);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetOpenIDType() && !OpenIDType.VALID_VALUES.contains(openIDType)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'openIDType' has been assigned the invalid value $openIDType");
    }
  }

}
