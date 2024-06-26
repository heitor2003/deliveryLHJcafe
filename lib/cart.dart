import 'package:delivery_lhj_cafe/widgets/textos.dart';
import 'package:flutter/material.dart';
import 'finalizar.dart';

class Cart {
  static List<Map<String, dynamic>> items = [];

  static void addItem(int itemId, String itemName, int quantity, double price) {
    items.add({'id': itemId, 'name': itemName, 'quantity': quantity, 'value': quantity * price});
  }

  static List<Map<String, dynamic>> getItems() {
    return items;
  }

  static double getTotalValue() {
    return items.fold(0.0, (total, item) => total + item['value']);
  }

  static int getItemQuantity(int itemId) {
    final item = items.firstWhere((item) => item['id'] == itemId);
    return item != null ? item['quantity'] : 0;
  }

  static void clearCart() {
    items.clear();
  }
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void _clearCart() {
    setState(() {
      Cart.clearCart();
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Carrinho limpo!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = Cart.getItems();
    return Scaffold(
      appBar: AppBar(
        title: Text('Seu Carrinho'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FinalizarPage()),
                    );
                  },
                  child: Textos('Finalizar Compra', Colors.white),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.brown),
                  ),
                ),
                ElevatedButton(
                  onPressed: _clearCart,
                  child: Textos('Limpar Carrinho', Colors.white),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
