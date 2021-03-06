/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library auth.src.login_result_ext_info;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:auth/auth.dart';
import 'package:xkcm/xkcm.dart' as t_xkcm;

class LoginResultExtInfo implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("LoginResultExtInfo");
  static final TField _CAS_TGT_FIELD_DESC = new TField("casTgt", TType.STRING, 1);

  String _casTgt;
  static const int CASTGT = 1;


  LoginResultExtInfo() {
  }

  // casTgt
  String get casTgt => this._casTgt;

  set casTgt(String casTgt) {
    this._casTgt = casTgt;
  }

  bool isSetCasTgt() => this.casTgt != null;

  unsetCasTgt() {
    this.casTgt = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case CASTGT:
        return this.casTgt;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case CASTGT:
        if (value == null) {
          unsetCasTgt();
        } else {
          this.casTgt = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case CASTGT:
        return isSetCasTgt();
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
        case CASTGT:
          if (field.type == TType.STRING) {
            this.casTgt = iprot.readString();
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
    if (this.casTgt != null) {
      oprot.writeFieldBegin(_CAS_TGT_FIELD_DESC);
      oprot.writeString(this.casTgt);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("LoginResultExtInfo(");

    ret.write("casTgt:");
    if (this.casTgt == null) {
      ret.write("null");
    } else {
      ret.write(this.casTgt);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

