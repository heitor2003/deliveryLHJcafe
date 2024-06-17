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
  double _preco = 13;

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
    return SingleChildScrollView(
        child:
        Container(
          child: Column(
          children: [
            SuaImagem(caminhoArquivo: "imagens/cAoleite.png"),
            Text("Massa de baunilha com gotas de chocolate ao leite \nR\$ $_preco"),
            QuantidadeButton(
                quantidadeInicial: 1,
                onQuantidadeAtualizada: (novaQuantidade) {print('Nova quantidade: $novaQuantidade');}),
            AddButton(nome: _nome, quantidade: _quantidade, preco: _preco),
          ],
        ),
      )
    );
  }
}
