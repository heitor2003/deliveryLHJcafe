import 'package:delivery_lhj_cafe/cart.dart';
import 'package:delivery_lhj_cafe/widgets/addButton.dart';
import 'package:delivery_lhj_cafe/widgets/quantidadeButton.dart';
import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/imagens.dart';

class TelaPaoQueijo extends StatefulWidget {
  const TelaPaoQueijo({super.key});

  @override
  State<TelaPaoQueijo> createState() => _TelaPaoQueijoState();
}

class _TelaPaoQueijoState extends State<TelaPaoQueijo> {
  int _quantidade = 1;
  String _nome = "Pão de Queijo";
  double _preco = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos("Pão de Queijo", Colors.black),
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
            SuaImagem(caminhoArquivo: "imagens/paoQueijo.png"),
            Text("Pão de queijo de qualidade premium, 80g \n R\$ $_preco"),
            QuantidadeButton(
              quantidadeInicial: 1,
              onQuantidadeAtualizada: (novaQuantidade) {
                setState(() {
                  _quantidade = novaQuantidade;
                });
              },
            ),
            AddButton(id: 8, nome: _nome, quantidade: _quantidade, preco: _preco),
          ],
        ),
      )
    );
  }
}

