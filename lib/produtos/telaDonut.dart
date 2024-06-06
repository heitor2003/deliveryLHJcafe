import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaDonut extends StatefulWidget {
  const TelaDonut({super.key});

  @override
  State<TelaDonut> createState() => _TelaDonutState();
}

class _TelaDonutState extends State<TelaDonut> {
  int _quantidade = 1;
  String _nome = "Donut";
  double _preco = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Café", Colors.black),
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
          SuaImagem(caminhoArquivo: "imagens/Donut.png"),
          Text("Donut recheado com creme bavariano \nR\$ $_preco"),
          QuantidadeButton(
            quantidadeInicial: 1,
            onQuantidadeAtualizada: (novaQuantidade) {
              setState(() {
                _quantidade = novaQuantidade;
              });
            },
          ),
          AddButton(nome: _nome, quantidade: _quantidade, preco: _preco),
        ],
      ),
    );
  }
}
