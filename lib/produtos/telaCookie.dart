import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaCookie extends StatelessWidget {
  const TelaCookie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Cookie", Colors.black),
        backgroundColor: Colors.brown,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: [
          SuaImagem(caminhoArquivo: "imagens/cAoleite.png"),
          Text("Massa de baunilha com gotas de chocolate ao leite"),
          QuantidadeButton(
              quantidadeInicial: 1,
              onQuantidadeAtualizada: (novaQuantidade) {print('Nova quantidade: $novaQuantidade');})
        ],
      ),
    );
  }
}
