import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPagePageState createState() => _HistoryPagePageState();
}

class _HistoryPagePageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
            icon: Image.asset("images/back_arrow.png"),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Histórico",
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.70,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              color: Color(0xffd85d63),
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                Container(
                  width: 382,
                  height: 118,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 382,
                        height: 118,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x2d000000),
                              blurRadius: 11,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Color(0xfff3f6f8),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 285,
                              top: 32,
                              child: SizedBox(
                                width: 81,
                                height: 11,
                                child: Text(
                                  "RS 300,00",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xff2c343b),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 116,
                              top: 32,
                              child: SizedBox(
                                width: 127,
                                child: Text(
                                  "12:00",
                                  style: TextStyle(
                                    color: Color(0xff31af45),
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 96,
                              top: 59,
                              child: Container(
                                width: 214,
                                height: 27,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 214,
                                      child: Text(
                                        "Manicure - Pé e Mão",
                                        style: TextStyle(
                                          color: Color(0xff2c343b),
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 16,
                              child: Container(
                                width: 64,
                                height: 86,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xffe6edf4),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 32,
                              child: SizedBox(
                                width: 64,
                                height: 15,
                                child: Text(
                                  "Ter",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff8942cc),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 59,
                              child: SizedBox(
                                width: 64,
                                height: 47,
                                child: Text(
                                  "19",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff8942cc),
                                    fontSize: 34,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
