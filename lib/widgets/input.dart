import 'package:flutter/material.dart';
class Input extends StatelessWidget {
  TextEditingController controller;
  Input(this.controller);
  //construtor com parametro
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
    );
  }
}
