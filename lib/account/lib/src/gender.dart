/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library account.src.gender;

class Gender {
  static const int MALE = 1;
  static const int FEMALE = 2;

  static final Set<int> VALID_VALUES = new Set.from([
    MALE
    , FEMALE
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    MALE: 'MALE'
    , FEMALE: 'FEMALE'
  };
}
