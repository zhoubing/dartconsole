/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library xkcm.src.region;

class Region {
  static const int CN = 0;
  static const int US = 1;

  static final Set<int> VALID_VALUES = new Set.from([
    CN
    , US
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    CN: 'CN'
    , US: 'US'
  };
}
