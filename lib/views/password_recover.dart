import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  PasswordPage({Key key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
              icon: Image.asset("images/back_arrow.png"), onPressed: () {}),
          title: Text(
            "Recuperar a senha",
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
                        "Por favor, digite o seu telefone. Você receberá um código para a atualização",
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
                      obscureText: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Seu telefone',
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
                  SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Outra forma de recuperar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9247d9),
                        fontSize: 16,
                      ),
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
                      "PRÓXIMO",
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
