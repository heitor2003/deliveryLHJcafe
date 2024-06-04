import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaCafeGelado extends StatelessWidget {
  const TelaCafeGelado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Café Gelado", Colors.black),
        backgroundColor: Colors.brown,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: [
          SuaImagem(caminhoArquivo: "imagens/cafeGelado.png"),
          Text("Café coado gelado"),
          QuantidadeButton(
              quantidadeInicial: 1,
              onQuantidadeAtualizada: (novaQuantidade) {print('Nova quantidade: $novaQuantidade');})
        ],
      ),
    );
  }
}
