import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../core/core.dart';

class QrCodePage extends StatelessWidget {
  String code = "433CDACA";
  Color c;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              leading: IconButton(
                  icon: Image.asset("images/back_arrow.png"), onPressed: () {}),
              title: Text(
                "Meu QR Code",
                textAlign: TextAlign.center,
                style: AppTextStyles.h6_bold,
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "O seu código de associação",
                    style: AppTextStyles.h6_regular,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        code,
                        style: AppTextStyles.h4_regular,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SvgPicture.asset(
                        "images/icons/copy.svg",
                        color: AppColors.black0,
                        semanticsLabel: 'Copy Icon',
                        height: 32,
                      ),
                    ],
                  ),
                  QrImage(
                    data: code,
                    version: QrVersions.auto,
                    size: 200.0,
                    foregroundColor: AppColors.blue0,
                  ),
                  Text(
                    "Após validar esse código você tem o prazo de 48 horas até que ele deixe de valer",
                    style: AppTextStyles.p_regular,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
