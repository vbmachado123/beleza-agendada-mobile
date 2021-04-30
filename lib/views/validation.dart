import 'package:flutter/material.dart';

class ValidationPage extends StatefulWidget {
  ValidationPage({Key key}) : super(key: key);

  @override
  _ValidationPageState createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
              icon: Image.asset("images/back_arrow.png"), onPressed: () {}),
          title: Text(
            "Validação",
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
                      alignment: Alignment.center,
                      child: Text(
                        "Digite o código de verificação",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff262c33),
                          fontSize: 34,
                        ),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "O código foi enviado para o número +55 11 99897-1053 via SMS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                  Container(
                    width: 384,
                    height: 54.28,
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 54,
                          height: 54,
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
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "O token expira em 1:52",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9247d9),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Não recebeu o código? Reenviar ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        )),
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
                      "VALIDAR CÓDIGO",
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
