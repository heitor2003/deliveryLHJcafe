import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/cart.dart';

class AddButton extends StatelessWidget {
  final String nome;
  final int quantidade;
  final double preco;
  double get valor => preco * quantidade;

  AddButton({required this.nome, required this.quantidade, required this.preco});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Cart.addItem(nome, quantidade, preco);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Adicionado ao carrinho: $quantidade $nome R\$ $valor'),
          ),
        );
      },
      child: Textos("Adicionar ao carrinho", Colors.white),
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.brown)
      ),
    );
  }
}