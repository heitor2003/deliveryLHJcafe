import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaCookie extends StatelessWidget {
  const TelaCookie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Café"),
        backgroundColor: Colors.brown,
      ),
      body: _body(),
    );
  }

  _body() {}
}
