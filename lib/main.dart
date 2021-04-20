import 'package:beleza_agendada/config/colors.dart';
import 'package:beleza_agendada/views/welcome.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beleza agendada',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(
          seconds:8,
          navigateAfterSeconds: new WelcomePage(),
          image: new Image.asset('images/logo_white.png') ,
          title: new Text('beleza agendada',
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0 , color: Colors.white)),
          backgroundColor: HexColor(clienteColor),
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          onClick: () => print("Flutter Egypt"),
          loaderColor: Colors.white),
    );
  }
}