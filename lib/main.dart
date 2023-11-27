// Importa os pacotes necessários
import 'package:navegacao/data/categorias.dart';
import 'package:navegacao/telas/tela_produtos.dart'; // Importa a tela de produtos
import 'package:navegacao/models/produtos.dart'; // Importa o modelo de produtos
import 'package:flutter/material.dart'; // Importa o pacote de Flutter para construção da interface
import 'utils/rotas.dart'; // Importa as rotas definidas na aplicação
import 'Telas/tela_categoria.dart'; // Importa a tela de categorias

// Função principal que inicializa o aplicativo
void main() => runApp(AppCardapio());

// Classe principal do aplicativo que herda de StatelessWidget
class AppCardapio extends StatelessWidget {
  // Lista de produtos válidos obtida a partir dos dados de produtos fictícios
  Future<List<Produto>> produtosValidos2 = dadosCategoria();

  // Método que constrói a interface do aplicativo
  @override
  Widget build(BuildContext context) {
    // Retorna o widget MaterialApp, que é a estrutura básica do aplicativo Flutter
    return MaterialApp(
      title: 'Cardápio', // Título do aplicativo
      theme: ThemeData(
        // Configuração do tema do aplicativo
        primarySwatch: Colors.blue, // Cor primária do aplicativo
        fontFamily: 'Schyler', // Fonte padrão do aplicativo
        textTheme: ThemeData.light().textTheme.copyWith(
          // Configuração do tema de texto
          titleSmall: const TextStyle(
            fontSize: 20,
            fontFamily: "Schyler",
          ),
        ),
      ),
      routes: {
        // Definição das rotas do aplicativo
        Rotas.HOME: (ctx) => TelaCategorias(), // Rota para a tela de categorias
        Rotas.PRODUTOS: (ctx) => TelaProdutos(produtosValidos2), // Rota para a tela de produtos
      },
    );
  }
}
