/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library xkcm.src.auth_mode;

class AuthMode {
  static const int NONE = 0;
  static const int DIGEST = 1;

  static final Set<int> VALID_VALUES = new Set.from([
    NONE
    , DIGEST
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    NONE: 'NONE'
    , DIGEST: 'DIGEST'
  };
}
