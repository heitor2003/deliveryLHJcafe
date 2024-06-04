import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaPaoChapa extends StatelessWidget {
  const TelaPaoChapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Pão Na Chapa", Colors.black),
        backgroundColor: Colors.brown,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: [
          SuaImagem(caminhoArquivo: "imagens/Pao-na-Chapa.png"),
          Text("Pão francês torrado na chapa com manteiga"),
          QuantidadeButton(
              quantidadeInicial: 1,
              onQuantidadeAtualizada: (novaQuantidade) {print('Nova quantidade: $novaQuantidade');})
        ],
      ),
    );
  }
}
