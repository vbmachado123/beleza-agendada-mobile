import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePagePageState createState() => _ProfilePagePageState();
}

class _ProfilePagePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
            icon: Image.asset("images/back_arrow.png"), onPressed: () {}),
        title: Text(
          "Meu Perfil",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff2c343b),
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(child: SingleChildScrollView(child: Column(children: [
          ClipOval(
            child: Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: Color(0xffeef3f8), width: 4),
              ),
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bruno.jpg'),
                        fit: BoxFit.fitWidth),
                  )),
            ))
      ]))),
    );
  }
}
