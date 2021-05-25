import 'package:beleza_agendada/core/core.dart';
import 'package:beleza_agendada/service/user_type_state.dart';
import 'package:beleza_agendada/views/resgister_form.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  final userTypeState = UserTypeState();

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
                  child: Text('Bem-Vindo',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.h4_bold)),
              Positioned(
                  top: 88,
                  left: 0,
                  right: 0,
                  child: Text('Deseja entrar como?',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.h6_regular)),
            ])),

            GestureDetector(
                  onTap: (){

                    //TODO : Corrigir user type State Mobx passar valor para todo o app
                    //userTypeState.value = 'cliente';
                    //setState(() {});
                  },
                  child: Container(
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
                              color: userTypeState.value == null ? Color.fromRGBO(255, 255, 255, 1) :
                              userTypeState.value == 'cliente' ? Colors.black :
                              Color.fromRGBO(255, 255, 255, 1) ,
                            ))        
              ),
            GestureDetector(
                  onTap: (){
                    //userTypeState.value = 'profissional';
                    //setState(() {});
                  },
                  child: Container(
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
                          color: userTypeState.value == null ? Color.fromRGBO(255, 255, 255, 1) :
                              userTypeState.value == 'profissional' ? Colors.black :
                              Color.fromRGBO(255, 255, 255, 1) ,
                        ))        
              ),

              GestureDetector(
                  onTap: (){
                      //userTypeState.value = 'salao';
                      //setState(() {});
                    },
                    child:  Container(
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
                                color: userTypeState.value == null ? Color.fromRGBO(255, 255, 255, 1) :
                              userTypeState.value == 'salao' ? Colors.black :
                              Color.fromRGBO(255, 255, 255, 1) ,
                              ))          
                ),

                  GestureDetector(
                  onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                  },
                  child: Container(
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
                          )),
                  )
        
      ],
    )));
  }
}
