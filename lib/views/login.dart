import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: [
      SizedBox(height: 30),
      SizedBox(
        height: 114,
        width: 213,
        child: Image.asset("images/logo_cliente.png"),
      ),
      Container(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              width: 169,
              height: 64,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 169,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 24,
                          offset: Offset(0, 8),
                        ),
                      ],
                      color: Color(0xfffbfbfb),
                    ),
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 161,
                          height: 48,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset(
                                    "images/facebook_login_btn.png"),
                              ),
                              SizedBox(width: 8),
                              SizedBox(
                                width: 105,
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Color(0xff042635),
                                    fontSize: 21,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 169,
              height: 64,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 169,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 24,
                          offset: Offset(0, 8),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset("images/google_login_btn.png"),
                        ),
                        SizedBox(width: 8),
                        SizedBox(
                          width: 105,
                          child: Text(
                            "Google",
                            style: TextStyle(
                              color: Color(0xff042635),
                              fontSize: 21,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
          width: 381.9998779296875,
          height: 20,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 6, left: 10, right: 10),
                        child: Divider(
                            color: Color.fromRGBO(44, 52, 59, 1),
                            thickness: 1))),
                Text(
                  'Ou entrar com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(44, 52, 59, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 6, left: 10, right: 10),
                        child: Divider(
                            color: Color.fromRGBO(44, 52, 59, 1),
                            thickness: 1)))
              ])),
      Container(
          margin: EdgeInsets.only(top: 12, left: 15, right: 15),
          child: SizedBox(
              width: 371,
              height: 20,
              child: Text(
                "E-mail",
                style: TextStyle(
                  color: Color(0xff2c343b),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ))),
      Container(
        width: 382,
        height: 64,
        padding: EdgeInsets.all(8),
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'E-mail',
          ),
        ),
        margin: EdgeInsets.only(top: 8, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 24,
              offset: Offset(0, 8),
            ),
          ],
          color: Colors.white,
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 12, left: 15, right: 15),
          child: SizedBox(
              width: 371,
              height: 20,
              child: Text(
                "Senha",
                style: TextStyle(
                  color: Color(0xff2c343b),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ))),
      Container(
        width: 382,
        height: 64,
        padding: EdgeInsets.all(8),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Senha',
          ),
        ),
        margin: EdgeInsets.only(top: 8, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 24,
              offset: Offset(0, 8),
            ),
          ],
          color: Colors.white,
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 2, left: 15, right: 15),
          child: SizedBox(
              width: 371,
              height: 20,
              child: Text(
                "esqueci minha senha",
                style: TextStyle(
                  color: Color(0xff2c343b),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ))),
      Container(
        width: 382,
        height: 64,
        alignment: Alignment.center,
        child: Text(
          "FAZER LOGIN",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xffeef3f8),
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
          ),
        ),
        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
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
      Container(
          width: 382,
          height: 64,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 40, left: 10, right: 10),
          child: RichText(
            text: TextSpan(
              text: 'Não possui conta? ',
              children: <TextSpan>[
                TextSpan(
                    text: 'Cadastre-se',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ))
    ]))));
  }
}
