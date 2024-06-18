import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaCafeGelado extends StatefulWidget {
  const TelaCafeGelado({super.key});

  @override
  State<TelaCafeGelado> createState() => _TelaCafeGeladoState();
}

class _TelaCafeGeladoState extends State<TelaCafeGelado> {
  int _quantidade = 1;
  String _nome = "Café Gelado";
  double _preco = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Café Gelado", Colors.black),
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
            SuaImagem(caminhoArquivo: "imagens/cafeGelado.png"),
            Text("Café coado gelado \nR\$ $_preco"),
            QuantidadeButton(
              quantidadeInicial: 1,
              onQuantidadeAtualizada: (novaQuantidade) {
                setState(() {
                  _quantidade = novaQuantidade;
                });
              },
            ),
            AddButton(id: 2, nome: _nome, quantidade: _quantidade, preco: _preco),
          ],
        ),
      ),
    );
  }
}
