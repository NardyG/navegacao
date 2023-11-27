// Importa os pacotes necessários
import 'package:navegacao/models/categorias.dart'; // Importa o modelo de categorias
import 'package:http/http.dart' as http; // Importa o pacote HTTP para fazer requisições
import 'dart:convert' as convert; // Importa o pacote de conversão JSON

// Função assíncrona que retorna uma lista dinâmica contendo dados de categorias
Future<List<dynamic>> dadosCategoria() async {
  try {
    // Faz uma requisição HTTP GET para obter dados de categorias de uma URL específica
    final response = await http.get(Uri.parse('http://localhost:3306/categoria'));

    // Verifica se a resposta da requisição foi bem-sucedida (código 200)
    if (response.statusCode == 200) {
      // Converte a resposta JSON em um objeto Dart
      var jsonResponse = convert.jsonDecode(response.body);

      // Retorna a lista de dados de categorias obtidos
      return jsonResponse;
    } else {
      // Lança uma exceção se a requisição não for bem-sucedida
      throw Exception('Falha ao ler categorias! Status: ${response.statusCode}');
    }
  } catch (error) {
    // Captura e lança exceções caso ocorram erros durante o processo
    throw Exception('Erro ao obter dados de categorias: $error');
  }
}
