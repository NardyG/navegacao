// Importa os pacotes necessários
import 'package:flutter/material.dart';
import 'package:navegacao/componentes/item_categoria.dart'; // Importa o componente CategoriaItem
import 'package:navegacao/data/categorias.dart';
import '../componentes/categoria_item.dart'; // Importa os dados fictícios de categorias

// Classe que representa a tela de categorias
class TelaCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardápio do CEFETMG"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        // Cria uma lista de widgets CategoriaItem com base nas categorias fictícias
        children: dadosCategoria().map((e) {
          return CategoriaItem(e);
        }).toList(),
      ),
    );
  }
}
