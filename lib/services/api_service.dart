import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'http://localhost/lhj_cafe_backend';

  Future<void> createOrder(List<Map<String, dynamic>> items) async {
    final now = DateTime.now();
    final dataPedido = now.toIso8601String().split('T').first;
    final horaPedido = now.toIso8601String();

    final response = await http.post(
      Uri.parse('$apiUrl/create.php'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'data_pedido': dataPedido,
        'hora_pedido': horaPedido,
        'itens': items,
      }),
    );

    if (response.statusCode == 201) {
      print('Pedido criado com sucesso!');
    } else {
      print('Erro ao criar pedido: ${response.body}');
    }
  }
}
