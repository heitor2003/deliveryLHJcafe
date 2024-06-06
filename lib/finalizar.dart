import 'package:flutter/material.dart';

class FinalizarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finalizar Compra'),
      ),
      body: Center(
        child: Text('Obrigado pela sua compra!'),
      ),
    );
  }
}
