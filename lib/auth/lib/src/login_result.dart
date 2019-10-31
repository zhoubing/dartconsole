/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library auth.src.login_result;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:auth/auth.dart';
import 'package:xkcm/xkcm.dart' as t_xkcm;

class LoginResult implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("LoginResult");
  static final TField _DIGEST_AUTHORIZATION_RES_FIELD_DESC = new TField("digestAuthorizationRes", TType.STRUCT, 1);
  static final TField _AUTH_USER_INFO_FIELD_DESC = new TField("authUserInfo", TType.STRUCT, 2);
  static final TField _LOGIN_RESULT_EXT_INFO_FIELD_DESC = new TField("loginResultExtInfo", TType.STRUCT, 3);

  t_xkcm.DigestAuthorizationRes _digestAuthorizationRes;
  static const int DIGESTAUTHORIZATIONRES = 1;
  AuthUserInfo _authUserInfo;
  static const int AUTHUSERINFO = 2;
  LoginResultExtInfo _loginResultExtInfo;
  static const int LOGINRESULTEXTINFO = 3;


  LoginResult() {
  }

  // digestAuthorizationRes
  t_xkcm.DigestAuthorizationRes get digestAuthorizationRes => this._digestAuthorizationRes;

  set digestAuthorizationRes(t_xkcm.DigestAuthorizationRes digestAuthorizationRes) {
    this._digestAuthorizationRes = digestAuthorizationRes;
  }

  bool isSetDigestAuthorizationRes() => this.digestAuthorizationRes != null;

  unsetDigestAuthorizationRes() {
    this.digestAuthorizationRes = null;
  }

  // authUserInfo
  AuthUserInfo get authUserInfo => this._authUserInfo;

  set authUserInfo(AuthUserInfo authUserInfo) {
    this._authUserInfo = authUserInfo;
  }

  bool isSetAuthUserInfo() => this.authUserInfo != null;

  unsetAuthUserInfo() {
    this.authUserInfo = null;
  }

  // loginResultExtInfo
  LoginResultExtInfo get loginResultExtInfo => this._loginResultExtInfo;

  set loginResultExtInfo(LoginResultExtInfo loginResultExtInfo) {
    this._loginResultExtInfo = loginResultExtInfo;
  }

  bool isSetLoginResultExtInfo() => this.loginResultExtInfo != null;

  unsetLoginResultExtInfo() {
    this.loginResultExtInfo = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case DIGESTAUTHORIZATIONRES:
        return this.digestAuthorizationRes;
      case AUTHUSERINFO:
        return this.authUserInfo;
      case LOGINRESULTEXTINFO:
        return this.loginResultExtInfo;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case DIGESTAUTHORIZATIONRES:
        if (value == null) {
          unsetDigestAuthorizationRes();
        } else {
          this.digestAuthorizationRes = value;
        }
        break;

      case AUTHUSERINFO:
        if (value == null) {
          unsetAuthUserInfo();
        } else {
          this.authUserInfo = value;
        }
        break;

      case LOGINRESULTEXTINFO:
        if (value == null) {
          unsetLoginResultExtInfo();
        } else {
          this.loginResultExtInfo = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case DIGESTAUTHORIZATIONRES:
        return isSetDigestAuthorizationRes();
      case AUTHUSERINFO:
        return isSetAuthUserInfo();
      case LOGINRESULTEXTINFO:
        return isSetLoginResultExtInfo();
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
        case DIGESTAUTHORIZATIONRES:
          if (field.type == TType.STRUCT) {
            this.digestAuthorizationRes = new t_xkcm.DigestAuthorizationRes();
            this.digestAuthorizationRes.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case AUTHUSERINFO:
          if (field.type == TType.STRUCT) {
            this.authUserInfo = new AuthUserInfo();
            this.authUserInfo.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LOGINRESULTEXTINFO:
          if (field.type == TType.STRUCT) {
            this.loginResultExtInfo = new LoginResultExtInfo();
            this.loginResultExtInfo.read(iprot);
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
    if (this.digestAuthorizationRes != null) {
      oprot.writeFieldBegin(_DIGEST_AUTHORIZATION_RES_FIELD_DESC);
      this.digestAuthorizationRes.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.authUserInfo != null) {
      oprot.writeFieldBegin(_AUTH_USER_INFO_FIELD_DESC);
      this.authUserInfo.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.loginResultExtInfo != null) {
      oprot.writeFieldBegin(_LOGIN_RESULT_EXT_INFO_FIELD_DESC);
      this.loginResultExtInfo.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("LoginResult(");

    ret.write("digestAuthorizationRes:");
    if (this.digestAuthorizationRes == null) {
      ret.write("null");
    } else {
      ret.write(this.digestAuthorizationRes);
    }

    ret.write(", ");
    ret.write("authUserInfo:");
    if (this.authUserInfo == null) {
      ret.write("null");
    } else {
      ret.write(this.authUserInfo);
    }

    ret.write(", ");
    ret.write("loginResultExtInfo:");
    if (this.loginResultExtInfo == null) {
      ret.write("null");
    } else {
      ret.write(this.loginResultExtInfo);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
