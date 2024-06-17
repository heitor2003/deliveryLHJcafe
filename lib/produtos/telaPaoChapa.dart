import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaPaoChapa extends StatefulWidget {
  const TelaPaoChapa({super.key});

  @override
  State<TelaPaoChapa> createState() => _TelaPaoChapaState();
}

class _TelaPaoChapaState extends State<TelaPaoChapa> {
  int _quantidade = 1;
  String _nome = "Pão na Chapa";
  double _preco = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Pão Na Chapa", Colors.black),
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
       child: Container(
          child: Column(
            children: [
              SuaImagem(caminhoArquivo: "imagens/Pao-na-Chapa.png"),
              Text("Pão francês torrado na chapa com manteiga \n R\$ $_preco"),
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
       )
    );
  }
}