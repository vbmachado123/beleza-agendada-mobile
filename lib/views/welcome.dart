import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: 372,
            height: 130,
            child: Stack(children: <Widget>[
              Positioned(
                  left: 0,
                  right: 0,
                  child: Text(
                    'Bem-Vindo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 34,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                        ),
                  )),
              Positioned(
                  top: 88,
                  left: 0,
                  right: 0,
                  child: Text(
                    'Deseja entrar como?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                        ),
                  )),
            ])),
        Container(
            width: 382,
            height: 64,
            alignment: Alignment.center,
            margin: EdgeInsets.all(8),
            child: Text(
              'Cliente',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.18000000715255737),
                    offset: Offset(0, 4),
                    blurRadius: 11)
              ],
              color: Color.fromRGBO(255, 255, 255, 1),
            )),
        Container(
            width: 382,
            height: 64,
            alignment: Alignment.center,
            margin: EdgeInsets.all(8),
            child: Text(
              'Profissional',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.18000000715255737),
                    offset: Offset(0, 4),
                    blurRadius: 11)
              ],
              color: Color.fromRGBO(255, 255, 255, 1),
            )),
        Container(
            width: 382,
            height: 64,
            alignment: Alignment.center,
            margin: EdgeInsets.all(8),
            child: Text(
              'Salão',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.18000000715255737),
                    offset: Offset(0, 4),
                    blurRadius: 11)
              ],
              color: Color.fromRGBO(255, 255, 255, 1),
            )),
        Container(
            width: 382,
            height: 64,
            margin: EdgeInsets.only(left: 8, right: 8, top: 100),
            alignment: Alignment.center,
            child: Text(
              'ENTRAR',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(238, 243, 248, 1),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
                  ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.18000000715255737),
                    offset: Offset(0, 4),
                    blurRadius: 11)
              ],
              color: Color.fromRGBO(216, 93, 99, 1),
            ))
      ],
    )

            /*Container(
                    width: 382,
                    height: 631,
                    margin: EdgeInsets.all(8),
                    child: Stack( clipBehavior: Clip.none, children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                              width: 372,
                              height: 395,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 231,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                        width: 382,
                                        height: 64,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 382,
                                                  height: 64,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(16),
                                                      topRight:
                                                          Radius.circular(16),
                                                      bottomLeft:
                                                          Radius.circular(16),
                                                      bottomRight:
                                                          Radius.circular(16),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Color.fromRGBO(
                                                              0,
                                                              0,
                                                              0,
                                                              0.18000000715255737),
                                                          offset: Offset(0, 4),
                                                          blurRadius: 11)
                                                    ],
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ))),
                                          Positioned(
                                              top: 0,
                                              left: 19,
                                              child: Text(
                                                'Cliente',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.5),
                                              )),
                                        ]))),
                                Positioned(
                                    top: 327,
                                    left: 0,
                                    right: 0,
                                    child: Center()),
                                Positioned(
                                    top: 135,
                                    left: 0,
                                    right: 0,
                                    child: Center()),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Text(
                                      'Bem-Vindo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 34,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    )),
                                Positioned(
                                    top: 88,
                                    left: 0,
                                    right: 0,
                                    child: Text(
                                      'Deseja entrar como?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    )),
                              ]))),
                      Positioned(
                          top: 567,
                          left: 0,
                          child:  // Figma Flutter Generator BotoazulgWidget - INSTANCE
                              Container(
                                  width: 382,
                                  height: 64,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 382,
                                            height: 64,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                topRight: Radius.circular(16),
                                                bottomLeft: Radius.circular(16),
                                                bottomRight:
                                                    Radius.circular(16),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color.fromRGBO(0, 0,
                                                        0, 0.18000000715255737),
                                                    offset: Offset(0, 4),
                                                    blurRadius: 11)
                                              ],
                                              color: Color.fromRGBO(
                                                  216, 93, 99, 1),
                                            ))),
                                    Positioned(
                                        left: 0,
                                        right: 0,
                                        child: Text(
                                          'ENTRAR',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  238, 243, 248, 1),
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              ),
                                        )),
                                  ]))),
                    ]))*/
            ));
  }
}