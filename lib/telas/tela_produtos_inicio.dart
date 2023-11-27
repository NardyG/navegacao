// Importa os pacotes necessários
import 'package:navegacao/models/categorias.dart'; // Importa o modelo de categorias
import 'package:flutter/material.dart';

// Classe que representa a tela de produtos
class TelaProdutos extends StatelessWidget {
  // Categoria selecionada para exibição de produtos
  final Categoria categoria;

  // Construtor que recebe a categoria como parâmetro
  const TelaProdutos(this.categoria);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produtos"),
      ),
      body: Center(
        // Exibe o título da categoria no centro da tela
        child: Text(this.categoria.titulo),
      ),
    );
  }
}
