import 'dart:async';

import 'package:beleza_agendada/models/customer.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:beleza_agendada/controllers/authController.dart'
    as authController;

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
  String genderFieldValue = "Prefiro não dizer";

  //VALIDATORS
  bool _nameValidator = false;
  bool _emailValidator = false;
  bool _passwordValidator = false;
  bool _phoneValidator = false;
  bool _birthdayValidator = false;

  //TEXT CONTROLLERS
  TextEditingController _resgisterNameTextEditingController =
      TextEditingController();
  TextEditingController _resgisterEmailTextEditingController =
      TextEditingController();
  TextEditingController _resgisterPassWordTextEditingController =
      TextEditingController();
  TextEditingController _resgisterPhoneTextEditingController =
      TextEditingController();
  TextEditingController _resgisterBirthdayTextEditingController =
      TextEditingController();

  //MASKS
  MaskTextInputFormatter phoneMaskFormatter = new MaskTextInputFormatter(
      mask: '(###) #####-####', filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter birthdayMaskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});

  Widget _nameWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "Qual seu nome ?";
    return TextField(
      obscureText: false,
      controller: _resgisterNameTextEditingController,
      decoration: InputDecoration(
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Seu nome completo',
          errorText: _nameValidator ? 'Preencha seu nome ' : null),
    );
  }

  Widget _emailWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "Qual seu email ?";
    return TextField(
      obscureText: false,
      controller: _resgisterEmailTextEditingController,
      decoration: InputDecoration(
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Seu e-mail',
          errorText: _emailValidator ? 'Preencha seu e-mail ' : null),
    );
  }

  Widget _passwordWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "Crie uma senha";
    return TextField(
      obscureText: true,
      controller: _resgisterPassWordTextEditingController,
      decoration: InputDecoration(
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Senha',
          errorText: _passwordValidator ? 'Preencha sua senha ' : null),
    );
  }

  Widget _phoneWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "Qual seu celular ?";
    return TextField(
      obscureText: false,
      inputFormatters: [phoneMaskFormatter],
      controller: _resgisterPhoneTextEditingController,
      decoration: InputDecoration(
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: 'Seu telefone',
          errorText: _phoneValidator ? 'Preencha seu telefone ' : null),
    );
  }

  Widget _birthdayWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "Quando você nasceu?";
    return TextField(
      obscureText: false,
      inputFormatters: [birthdayMaskFormatter],
      controller: _resgisterBirthdayTextEditingController,
      decoration: InputDecoration(
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: '00/00/0000',
          errorText:
              _birthdayValidator ? 'Preencha sua data de nascimento ' : null),
    );
  }

  Widget _genderWidthBuilder() {
    _currentOpacity = 1;
    indicatorStepText = "Qual seu gênero?";
    return DropdownButton<String>(
      value: genderFieldValue,
      underline: SizedBox(),
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 0,
      onChanged: (String newValue) {
        setState(() {
          genderFieldValue = newValue;
        });
      },
      items: <String>['Masculino', 'Feminino', 'Prefiro não dizer']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  incrementDecrementCounter(next) {
    if (stepCounter < 7) {
      next ? stepCounter++ : stepCounter--;
    }
  }

  initStep(bool next) {
    setState(() {
      incrementDecrementCounter(next);

      if (stepCounter == 1) {
        Timer(Duration(seconds: 1), () {
          setState(() {
            _currentInfoWidget = _nameWidthBuilder();
          });
        });
      }

      if (stepCounter == 2) {
        if (_resgisterNameTextEditingController.text.isNotEmpty) {
          _emailValidator = false;
          _currentOpacity = 0;
          Timer(Duration(seconds: 1), () {
            setState(() {
              _currentInfoWidget = _emailWidthBuilder();
            });
          });
        } else {
          stepCounter = 1;
          _emailValidator = true;
        }
      }

      if (stepCounter == 3) {
        if (_resgisterEmailTextEditingController.text.isNotEmpty) {
          _passwordValidator = false;
          _currentOpacity = 0;
          Timer(Duration(seconds: 1), () {
            setState(() {
              _currentInfoWidget = _passwordWidthBuilder();
            });
          });
        } else {
          stepCounter = 2;
          _passwordValidator = true;
        }
      }

      if (stepCounter == 4) {
        if (_resgisterPassWordTextEditingController.text.isNotEmpty) {
          _phoneValidator = false;
          _currentOpacity = 0;
          Timer(Duration(seconds: 1), () {
            setState(() {
              _currentInfoWidget = _phoneWidthBuilder();
            });
          });
        } else {
          stepCounter = 3;
          _phoneValidator = true;
        }
      }

      if (stepCounter == 5) {
        if (_resgisterPhoneTextEditingController.text.isNotEmpty) {
          _birthdayValidator = false;
          _currentOpacity = 0;
          Timer(Duration(seconds: 1), () {
            setState(() {
              _currentInfoWidget = _birthdayWidthBuilder();
            });
          });
        } else {
          stepCounter = 4;
          _birthdayValidator = true;
        }
      }

      if (stepCounter == 6) {
        Timer(Duration(seconds: 1), () {
          setState(() {
            _currentInfoWidget = _genderWidthBuilder();
          });
        });
      }

      print(stepCounter);
      if (stepCounter == 7) {
        if (genderFieldValue.isNotEmpty) {
          String name = _resgisterNameTextEditingController.text;
          String email = _resgisterEmailTextEditingController.text;
          String password = _resgisterPassWordTextEditingController.text;
          String phone = _resgisterPhoneTextEditingController.text;
          String birthday = _resgisterBirthdayTextEditingController.text;
          String gender = genderFieldValue;

          Customer customer = Customer(
              name: name,
              email: email,
              password: password,
              phone: phone,
              birthday: birthday,
              gender: gender);

          authController.AuthController.signUp(customer);
        }
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
        appBar: AppBar(
          backgroundColor: Color(0xffd85d63),
          shadowColor: Colors.transparent,
          leading: IconButton(
              icon: Image.asset("images/back_arrow.png"),
              onPressed: () {
                initStep(false);
              }),
          title: Text(
            stepCounter <= 6 ? "Etapa $stepCounter de 6" : "Etapa 6 de 6",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xfff3f6f8),
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: ColoredBox(
            color: Color(0xffd85d63),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(children: [
                Positioned(
                    top: 40,
                    left: 12,
                    right: 0,
                    child: Column(children: [
                      SizedBox(
                          height: 266,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: AnimatedOpacity(
                              duration: Duration(milliseconds: 500),
                              opacity: _currentOpacity,
                              child: Text(
                                indicatorStepText,
                                style: TextStyle(
                                  color: Color(0xfff3f6f8),
                                  fontSize: 34,
                                ),
                              ),
                            ),
                          )),
                    ])),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      //height: 450,
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
                    )),
              ]),
            )));
  }
}
