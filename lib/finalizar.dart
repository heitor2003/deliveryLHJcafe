import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/cart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FinalizarPage extends StatelessWidget {
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
                  Text('Total:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('R\$ $totalValue',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await finalizarCompra(items, totalValue);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Compra finalizada com sucesso!')),
                  );
                  Cart.clearCart();
                  Navigator.pop(context);
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Erro ao finalizar compra: $e')),
                  );
                }
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

  Future<void> finalizarCompra(List<Map<String, dynamic>> items, double totalValue) async {
    final url = Uri.parse('http://10.131.254.139/lhj_cafe_backend/api/finalizar_pedido.php');
    print('Enviando requisição para $url');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'items': items,
        'total_value': totalValue,
      }),
    );

    print('Resposta recebida: ${response.statusCode}');
    print('Corpo da resposta: ${response.body}');

    if (response.statusCode != 200) {
      throw Exception('Erro ao finalizar compra: ${response.reasonPhrase}');
    }
  }
}
