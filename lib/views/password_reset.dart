import 'package:flutter/material.dart';

class PasswordResetPage extends StatefulWidget {
  PasswordResetPage({Key key}) : super(key: key);

  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
              icon: Image.asset("images/back_arrow.png"), onPressed: () {}),
          title: Text(
            "Esqueci a senha",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff2c343b),
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(12.0),
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Digite sua nova senha para redefinir",
                        style: TextStyle(
                          color: Color(0xff0f3242),
                          fontSize: 16,
                        ),
                      )),
                  Container(
                    width: 382,
                    height: 64,
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Senha',
                          contentPadding: EdgeInsets.all(12.0)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x2d000000),
                          blurRadius: 11,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 382,
                    height: 64,
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Confirmar Senha',
                          contentPadding: EdgeInsets.all(12.0)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x2d000000),
                          blurRadius: 11,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                  )
                ])),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 382,
                    height: 64,
                    alignment: Alignment.center,
                    child: Text(
                      "REDEFINIR SENHA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffeef3f8),
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x2d000000),
                          blurRadius: 11,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xffd85d63),
                    ),
                  ),
                )),
          ]),
        ));
  }
}
