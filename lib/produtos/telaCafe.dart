import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:delivery_lhj_cafe/imagens.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';

class TelaCafe extends StatefulWidget {
  const TelaCafe({super.key});

  @override
  _TelaCafeState createState() => _TelaCafeState();
}

class _TelaCafeState extends State<TelaCafe> {
  int _quantidade = 1;
  String _nome = "Café Espresso";
  double _preco = 7.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Café Espresso", Colors.black),
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
              SuaImagem(caminhoArquivo: "imagens/cafeEspresso.png"),
              Text("Café espresso especial \nR\$ $_preco"),
              QuantidadeButton(
                quantidadeInicial: 1,
                onQuantidadeAtualizada: (novaQuantidade) {
                  setState(() {
                    _quantidade = novaQuantidade;
                  });
                },
              ),
              AddButton(id: 1, nome: _nome, quantidade: _quantidade, preco: _preco),
            ],
        ),
      )
    );
  }
}
