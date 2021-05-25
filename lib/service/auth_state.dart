import 'package:mobx/mobx.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class AuthState {
  AuthState() {
    checkToken = Action(_verifyItIsNull);
  }

  final storage = new FlutterSecureStorage();

  final _value = Observable(null);
  String get value => _value.value;

  set value(String newValue) => _value.value = newValue;
  Action checkToken;

  void _verifyItIsNull() async {

    String storageValue = await storage.read(key : "beleza_token");
    _value.value  = storageValue;

  }
}