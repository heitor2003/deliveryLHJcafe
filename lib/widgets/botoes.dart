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
                  minimumSize: MaterialStateProperty.all<Size>(Size(150, 100)),
                  backgroundColor: MaterialStateProperty.all(Colors.brown),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.brown)
                      )
                  )
              ),
          );


  }
}
