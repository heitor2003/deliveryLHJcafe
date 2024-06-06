import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/cart.dart';

class AddButton extends StatelessWidget {
  final String nome;
  final int quantidade;

  AddButton({required this.nome, required this.quantidade});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Cart.addItem(nome, quantidade);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Adicionado ao carrinho: $quantidade $nome'),
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