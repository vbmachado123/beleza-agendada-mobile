import 'dart:convert';

import 'package:beleza_agendada/models/customer.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import 'package:flutter/material.dart';

class ApiClientService {
  static final _dio = Dio();
  static String serverUrl = "http://localhost:3333";


  //TODO : TRATAR MENSAGENS DE ERRO;

  ApiClientService();

  static Future login(String email, String password) async {
    var url = serverUrl + '/login';
    var payLoad = Map<String, dynamic>();

    payLoad['email'] = email;
    payLoad['password'] = password;

    var response = await _dio.post(url,
        data: payLoad,
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader:
                ContentType.parse("application/json"),
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
        ));

        

    var data = response.data;
    return data;
  }

  static Future signUp(Customer customer , BuildContext context) async {
    var url = serverUrl + '/signup';
    var payLoad = Map<String, dynamic>();

    payLoad = customer.toJson();

    var response = await _dio.post(url,
        data: payLoad,
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader:
                ContentType.parse("application/json"),
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
        ));

    print("response.statusCode");
    print(response.statusCode);
    /*if(response.statusCode == 200 ){
        var data = response.data;
        return data;
    }else{
        showDialog(context: context, builder: (BuildContext context) { return AlertDialog(title: Text(response.statusMessage)); } );
        return null;
       
    }*/

    var data = response.data;
    return data;
    
  }
}
