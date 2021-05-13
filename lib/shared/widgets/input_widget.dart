import 'package:flutter/material.dart';

import '../../core/core.dart';

/**
 * @author Victor Balbino
 * @date 28/04/2021 
 * @description Widget Criado para Ser o Input Padrão para toda a aplicação
 */
class InputWidget extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final String hint;
  final bool obscureText;

  const InputWidget(
      {Key key,
      this.label,
      this.keyboardType,
      this.hint,
      this.obscureText = false})
      : super(key: key);

  // Texto Normal sem formatação
  InputWidget.text({String label, String hint})
      : this.label = label,
        this.keyboardType = TextInputType.name,
        this.obscureText = false,
        this.hint = hint;

  // E-mail, teclado formatado
  InputWidget.email({String label, String hint})
      : this.label = label,
        this.keyboardType = TextInputType.emailAddress,
        this.obscureText = false,
        this.hint = hint;

  // Texto com Hide
  InputWidget.password({String label})
      : this.label = label,
        this.keyboardType = TextInputType.visiblePassword,
        this.obscureText = true,
        this.hint = "**********";

  // Teclado numérico
  InputWidget.number({String label, String hint})
      : this.label = label,
        this.keyboardType = TextInputType.number,
        this.obscureText = false,
        this.hint = hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.obscureText,
      keyboardType: this.keyboardType,
      style: AppTextStyles.p_regular,
      decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          focusColor: AppColors.black0,
          hintText: this.hint,
          labelText: this.label,
          labelStyle: AppTextStyles.h6_regular,
          // fillColor: AppColors.white,
          // filled: false,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          alignLabelWithHint: true),
    );
  }
}
