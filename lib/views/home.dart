import 'package:beleza_agendada/views/history.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'scheduling.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Container(
                color: HexColor("#D95E63"),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 172,
                              height: 84,
                              child: Image.asset('images/splash_logo.png'))),
                    ),
                    SizedBox(height: 15.0),
                    Column(children: [
                      Stack(
                        children: [
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
                          )),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                width: 32,
                                height: 32,
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset(
                                          "images/icone_editar.png"),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
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
                              ))
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Bruno Henrique',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 0.0005062500131316483,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      )
                    ]),
                    SizedBox(height: 10.0),
                    ListTile(
                      leading: Image.asset("images/icone_agenda.png"),
                      title: Text('Agendamentos',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SchedulingPage(),
                          ),
                        );
                      },
                      trailing: Image.asset("images/icone_seta_direita.png"),
                    ),
                    ListTile(
                        leading: Image.asset("images/icone_profissionais.png"),
                        title: Text('Profissionais',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                        },
                        trailing: Image.asset("images/icone_seta_direita.png")),
                    ListTile(
                        leading: Image.asset("images/icone_historico.png"),
                        title: Text('Histórico',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HistoryPage(),
                            ),
                          );
                        },
                        trailing: Image.asset("images/icone_seta_direita.png")),
                    ListTile(
                        leading:
                            Image.asset("images/icone_onfig_preenchido.png"),
                        title: Text('Configurações',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                        },
                        trailing: Image.asset("images/icone_seta_direita.png")),
                  ],
                ))),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                margin: EdgeInsets.only(left: 12.0, bottom: 4),
                width: 48,
                height: 48,
                child: Container(
                  width: 48,
                  height: 48,
                  child: Container(
                    width: 48,
                    height: 48,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset("images/icone_menu.png"),
                      ),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x2d000000),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                          ),
                        ]),
                  ),
                ),
              )),
          actions: [
            Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(right: 12.0, bottom: 4),
                child: Container(
                  width: 48,
                  height: 48,
                  child: Container(
                    width: 48,
                    height: 48,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset("images/icone_notificacao.png"),
                      ),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x2d000000),
                            blurRadius: 8,
                            offset: Offset(0, 2),
                          ),
                        ]),
                  ),
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(top: 30.0),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 310,
                          height: 64,
                          alignment: Alignment.center,
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset("images/icone_pesquisa.png"),
                              ),
                              SizedBox(width: 8),
                              SizedBox(
                                  width: 227,
                                  child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.auto,
                                        labelText:
                                            'buscar profissional ou salão'),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          width: 64,
                          height: 64,
                          margin: EdgeInsets.only(left: 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 64,
                                height: 64,
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
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset(
                                          "images/icone_qr_code.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                        width: 414,
                        height: 300,
                        margin: EdgeInsets.only(top: 20.0),
                        color: Color(0xffd85d63),
                        child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("images/icone_agenda.png"),
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Seus agendamentos",
                                      style: TextStyle(
                                        color: Color(0xffeef3f8),
                                        fontSize: 20,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 60.0),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Você não possui nenhum \n serviço marcado",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xfff3f6f8),
                                        fontSize: 20,
                                      ),
                                    )),
                                SizedBox(height: 20.0),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 299,
                                    height: 64,
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
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Agendar Serviço",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xff262c33),
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: 32),
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Image.asset(
                                              "images/icone_seta_direita_black.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ))),
                    Container(
                      width: 382,
                      height: 96,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 40.0),
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
                      child: Container(
                        width: 382,
                        height: 96,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset("images/icone_agenda.png"),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "AGENDAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffeef3f8),
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 382,
                      height: 96,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 20.0),
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
                      child: Container(
                        width: 382,
                        height: 96,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:
                                  Image.asset("images/icone_profissionais.png"),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "PROFISSIONAIS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffeef3f8),
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
