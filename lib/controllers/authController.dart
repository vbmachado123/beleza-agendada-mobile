import 'package:beleza_agendada/models/customer.dart';
import 'package:beleza_agendada/service/api.dart' as api;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthController {
  AuthController();

  static login(String email, String password) async {

    var loginUpResult = await api.ApiClientService.login(email, password);
    print("loginUpResult");
    print(loginUpResult);

    //TODO : Verificar token vindo do DB 
    final storage = new FlutterSecureStorage();
    storage.write(key : "beleza_token",value: loginUpResult.token );

  }

  static signUp(Customer customer, BuildContext buildContext) async {
    var signUpResult = await api.ApiClientService.signUp(customer, buildContext);
    print("signUpResult");
    print(signUpResult);

    //TODO : Verificar token vindo do DB 
    final storage = new FlutterSecureStorage();
    storage.write(key : "beleza_token",value: signUpResult.token );
  }

}
