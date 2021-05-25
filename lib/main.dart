import 'package:beleza_agendada/config/colors.dart';
import 'package:beleza_agendada/service/auth_state.dart';
import 'package:beleza_agendada/views/dashboard.dart';
import 'package:beleza_agendada/views/welcome.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final authSate = AuthState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beleza agendada',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: authSate.value != null ? DashboardPage() : WelcomePage(),
          image: new Image.asset('images/splash_logo.png'),
          backgroundColor: HexColor(clienteColor),
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 200.0,
          onClick: () => print("Flutter Egypt"),
          loaderColor: Colors.white),
    );
  }
}
