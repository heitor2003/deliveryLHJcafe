import 'package:flutter/material.dart';

class QuantidadeButton extends StatefulWidget {
  final int quantidadeInicial;
  final ValueChanged<int> onQuantidadeAtualizada;

  const QuantidadeButton({
    Key? key,
    required this.quantidadeInicial,
    required this.onQuantidadeAtualizada,
  }) : super(key: key);

  @override
  State<QuantidadeButton> createState() => _QuantidadeButtonState();
}

class _QuantidadeButtonState extends State<QuantidadeButton> {
  int _quantidade = 0;

  @override
  void initState() {
    super.initState();
    _quantidade = widget.quantidadeInicial;
  }

  void _incrementarQuantidade() {
    setState(() {
      _quantidade++;
      widget.onQuantidadeAtualizada(_quantidade);
    });
  }

  void _decrementarQuantidade() {
    if (_quantidade > 1) {
      setState(() {
        _quantidade--;
        widget.onQuantidadeAtualizada(_quantidade); // Atualiza a quantidade
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _decrementarQuantidade,
          icon: Icon(Icons.remove),
        ),
        Text('$_quantidade'), // Exibe a quantidade atual
        IconButton(
          onPressed: _incrementarQuantidade,
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
