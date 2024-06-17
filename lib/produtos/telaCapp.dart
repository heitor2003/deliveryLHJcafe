import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:delivery_lhj_cafe/widgets/imagens.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';

class TelaCapp extends StatefulWidget {
  const TelaCapp({super.key});

  @override
  State<TelaCapp> createState() => _TelaCappState();
}

class _TelaCappState extends State<TelaCapp> {
  int _quantidade = 1;
  String _nome = "Cappuccino";
  double _preco = 12.90;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Textos("Cappuccino", Colors.black),
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
        child:  Container(
          child: Column(
            children: [
              SuaImagem(caminhoArquivo: "imagens/Capp.png"),
              Text("Leite com café, canela e chocolate \nR\$ $_preco"),
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
