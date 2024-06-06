import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/cart.dart';

class FinalizarPage extends StatefulWidget {
  @override
  _FinalizarPageState createState() => _FinalizarPageState();
}

class _FinalizarPageState extends State<FinalizarPage> {
  String _formaPagamento = 'Dinheiro';

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = Cart.getItems();
    double totalValue = Cart.getTotalValue();

    return Scaffold(
      appBar: AppBar(
        title: Text('Finalizar Compra'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]['name']),
                    subtitle: Text('Quantidade: ${items[index]['quantity']} Valor: ${items[index]['value']}'),
                  );
                },
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'R\$ $totalValue',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: DropdownButtonFormField<String>(
                value: _formaPagamento,
                items: ['Dinheiro', 'Crédito', 'Débito', 'Pix'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _formaPagamento = newValue!;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Forma de Pagamento',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para finalizar a compra, como salvar no banco de dados, etc.
                Cart.clearCart();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Compra finalizada com sucesso! Forma de pagamento: $_formaPagamento')),
                );
                Navigator.pop(context);
              },
              child: Textos('Confirmar Compra', Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
