import 'dart:async';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  double _currentOpacity = 1;
  int stepCounter = 1;
  String indicatorStepText = "seu nome";
  Widget _currentInfoWidget = Container();

  Widget _nameWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "seu nome";
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: 'Seu nome completo',
      ),
    );
  }

  Widget _emailWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "seu email";
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: 'Seu e-mail',
      ),
    );
  }

  Widget _passwordWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "sua senha";
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: 'Senha',
      ),
    );
  }

  Widget _phoneWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "seu celular";
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: 'Seu telefone',
      ),
    );
  }


  backStep(){

  }

  initStep(bool next){

    setState(() {
      if (stepCounter < 6) {
        _currentOpacity = 0;
        next ? stepCounter++ : stepCounter--;
      }

      if (stepCounter == 1) {
        Timer(Duration(seconds: 1), (){
          setState(() {
            _currentInfoWidget = _nameWidthBuilder();
          });
        });

      }

      if (stepCounter == 2) {
        Timer(Duration(seconds: 1), (){
          setState(() {
            _currentInfoWidget = _emailWidthBuilder();
          });
        });

      }

      if (stepCounter == 3) {
        Timer(Duration(seconds: 1), (){
          setState(() {
            _currentInfoWidget = _passwordWidthBuilder();
          });
        });

      }

      if (stepCounter == 4) {
        Timer(Duration(seconds: 1), (){
          setState(() {
            _currentInfoWidget = _phoneWidthBuilder();
          });
        });

      }



    });

  }

  @override
  void initState() {
    super.initState();

    _currentInfoWidget = _nameWidthBuilder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ColoredBox(
      color: Color(0xffd85d63),
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
              height: 266,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        leading: IconButton(
                            icon: Image.asset("images/back_arrow.png"),
                            onPressed: (){
                              initStep(false);
                            }),
                        title: Text(
                          "Etapa $stepCounter de 6",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xfff3f6f8),
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 40, left: 12),
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 500),
                          opacity: _currentOpacity,
                          child: Text(
                            "Qual $indicatorStepText ?",
                            style: TextStyle(
                              color: Color(0xfff3f6f8),
                              fontSize: 34,
                            ),
                          ),
                        ),
                      ))
                ],
              )),
          ConstrainedBox(
            constraints: new BoxConstraints(
                minHeight: 400, maxHeight: 630, maxWidth: 414, minWidth: 414),
            child: Container(
              //height: MediaQuery.of(context).size.height,
              height: 400,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
                color: Color(0xfff3f6f8),
              ),
              child: Stack(children: [
                Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 500),
                      opacity: _currentOpacity,
                      child: Container(
                        width: 382,
                        height: 64,
                        padding: EdgeInsets.all(8),
                        child: _currentInfoWidget,
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
                    )),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        initStep(true);
                      },
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
            ),
          )
        ],
      )),
    ));
  }
}
