import 'package:flutter/material.dart';
import 'package:navegacao/componentes/item_categoria.dart';
import 'package:navegacao/data/categorias.dart';
import '../componentes/categoria_item.dart';
import '../models/categorias.dart';

// Classe que representa a tela de categorias
class TelaCategorias extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardápio do CEFETMG"),
      ),
      body: FutureBuilder(
        future: dadosCategoria(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Object? categorias = snapshot.data;
            return GridView(
              padding: const EdgeInsets.all(25),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              // Cria uma lista de widgets CategoriaItem com base nas categorias fictícias
              children: categorias.map((e) {
                return CategoriaItem(e);
              }).toList(),
            );
          } else if (snapshot.hasError) {
            return Text("Erro ao carregar as categorias");
          }
          return CircularProgressIndicator();
        },
      ),
    );
 }
}