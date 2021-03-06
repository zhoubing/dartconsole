/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library auth.src.login_ext_info;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:auth/auth.dart';
import 'package:xkcm/xkcm.dart' as t_xkcm;

class LoginExtInfo implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("LoginExtInfo");
  static final TField _APNS_DEVICE_TOKEN_FIELD_DESC = new TField("apnsDeviceToken", TType.STRING, 1);

  String _apnsDeviceToken;
  static const int APNSDEVICETOKEN = 1;


  LoginExtInfo() {
  }

  // apnsDeviceToken
  String get apnsDeviceToken => this._apnsDeviceToken;

  set apnsDeviceToken(String apnsDeviceToken) {
    this._apnsDeviceToken = apnsDeviceToken;
  }

  bool isSetApnsDeviceToken() => this.apnsDeviceToken != null;

  unsetApnsDeviceToken() {
    this.apnsDeviceToken = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case APNSDEVICETOKEN:
        return this.apnsDeviceToken;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case APNSDEVICETOKEN:
        if (value == null) {
          unsetApnsDeviceToken();
        } else {
          this.apnsDeviceToken = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case APNSDEVICETOKEN:
        return isSetApnsDeviceToken();
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
        case APNSDEVICETOKEN:
          if (field.type == TType.STRING) {
            this.apnsDeviceToken = iprot.readString();
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
    if (this.apnsDeviceToken != null) {
      oprot.writeFieldBegin(_APNS_DEVICE_TOKEN_FIELD_DESC);
      oprot.writeString(this.apnsDeviceToken);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("LoginExtInfo(");

    ret.write("apnsDeviceToken:");
    if (this.apnsDeviceToken == null) {
      ret.write("null");
    } else {
      ret.write(this.apnsDeviceToken);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

