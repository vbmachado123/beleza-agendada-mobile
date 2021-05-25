import 'package:mobx/mobx.dart';


class UserTypeState {
  UserTypeState() {
    checkUserType = Action(_verifyUserType);
  }

  final _value = Observable(null);
  String get value => _value.value;
  set value(String newValue) => _value.value = newValue;

  Action checkUserType;

  void _verifyUserType(type) {
    _value.value  = type;
  }
}