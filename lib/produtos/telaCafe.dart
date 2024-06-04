import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';

class TelaCafe extends StatelessWidget {
  const TelaCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Café Espresso", Colors.black),
        backgroundColor: Colors.brown,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: [
          SuaImagem(caminhoArquivo: "imagens/cafeEspresso.png"),
          Text("Café espresso especial"),
          QuantidadeButton(
            quantidadeInicial: 1,
            onQuantidadeAtualizada: (novaQuantidade) {print('Nova quantidade: $novaQuantidade');})
        ],
      ),
    );
  }
}
