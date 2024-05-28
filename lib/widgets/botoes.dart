import 'dart:ui';

import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  String texto;
  void Function() onPressed;
  Buttons(this.texto, {required this.onPressed});
  @override




  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Textos(this.texto, Colors.white),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.brown),
        ),
    );
  }
}
