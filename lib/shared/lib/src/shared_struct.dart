/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library shared.src.shared_struct;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:shared/shared.dart';

class SharedStruct implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("SharedStruct");
  static final TField _KEY_FIELD_DESC = new TField("key", TType.I32, 1);
  static final TField _VALUE_FIELD_DESC = new TField("value", TType.STRING, 2);

  int _key = 0;
  static const int KEY = 1;
  String _value;
  static const int VALUE = 2;

  bool __isset_key = false;

  SharedStruct() {
  }

  // key
  int get key => this._key;

  set key(int key) {
    this._key = key;
    this.__isset_key = true;
  }

  bool isSetKey() => this.__isset_key;

  unsetKey() {
    this.__isset_key = false;
  }

  // value
  String get value => this._value;

  set value(String value) {
    this._value = value;
  }

  bool isSetValue() => this.value != null;

  unsetValue() {
    this.value = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case KEY:
        return this.key;
      case VALUE:
        return this.value;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case KEY:
        if (value == null) {
          unsetKey();
        } else {
          this.key = value;
        }
        break;

      case VALUE:
        if (value == null) {
          unsetValue();
        } else {
          this.value = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case KEY:
        return isSetKey();
      case VALUE:
        return isSetValue();
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
        case KEY:
          if (field.type == TType.I32) {
            this.key = iprot.readI32();
            this.__isset_key = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VALUE:
          if (field.type == TType.STRING) {
            this.value = iprot.readString();
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
    oprot.writeFieldBegin(_KEY_FIELD_DESC);
    oprot.writeI32(this.key);
    oprot.writeFieldEnd();
    if (this.value != null) {
      oprot.writeFieldBegin(_VALUE_FIELD_DESC);
      oprot.writeString(this.value);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("SharedStruct(");

    ret.write("key:");
    ret.write(this.key);

    ret.write(", ");
    ret.write("value:");
    if (this.value == null) {
      ret.write("null");
    } else {
      ret.write(this.value);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

