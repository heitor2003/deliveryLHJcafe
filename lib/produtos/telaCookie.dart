import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaCookie extends StatefulWidget {
  const TelaCookie({super.key});

  @override
  State<TelaCookie> createState() => _TelaCookieState();
}

class _TelaCookieState extends State<TelaCookie> {
  int _quantidade = 1;
  String _nome = "Cookie";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Cookie", Colors.black),
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
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
              onQuantidadeAtualizada: (novaQuantidade) {print('Nova quantidade: $novaQuantidade');}),
          AddButton(nome: _nome, quantidade: _quantidade),
        ],
      ),
    );
  }
}
