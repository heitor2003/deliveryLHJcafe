import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaChocolate extends StatefulWidget {
  const TelaChocolate({super.key});

  @override
  State<TelaChocolate> createState() => _TelaChocolateState();
}

class _TelaChocolateState extends State<TelaChocolate> {
  int _quantidade = 1;
  String _nome = "Chocolate";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Chocolate Quente", Colors.black),
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
          SuaImagem(caminhoArquivo: "imagens/chocolate.png"),
          Text("Chocolate quente cremoso tipo europeu"),
          QuantidadeButton(
            quantidadeInicial: 1,
            onQuantidadeAtualizada: (novaQuantidade) {
              setState(() {
                _quantidade = novaQuantidade;
              });
            },
          ),
          AddButton(nome: _nome, quantidade: _quantidade),
        ],
      ),
    );
  }
}
