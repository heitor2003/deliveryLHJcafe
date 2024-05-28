import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaCafe extends StatelessWidget {
  const TelaCafe({super.key});

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

  _body() {
    return SuaImagem(caminhoArquivo: 'imagens/cafeEspresso.png');
  }
}
