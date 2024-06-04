import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaPaoQueijo extends StatelessWidget {
  const TelaPaoQueijo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Pão de Queijo", Colors.black),
        backgroundColor: Colors.brown,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: [
          SuaImagem(caminhoArquivo: "imagens/paoQueijo.png"),
          Text("Pão de queijo de qualidade premium, 80g"),
          QuantidadeButton(
              quantidadeInicial: 1,
              onQuantidadeAtualizada: (novaQuantidade) {print('Nova quantidade: $novaQuantidade');})
        ],
      ),
    );
  }
}
