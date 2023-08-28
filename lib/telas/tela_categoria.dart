import 'package:flutter/material.dart';
import 'package:navegacao/componentes/item_categoria.dart';
import 'package:navegacao/data/mock_data.dart';

class TelaCategorias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardápio"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //tamanho de cada elemnento
          childAspectRatio: 3/2, //proporçao do elemento na tela
          crossAxisSpacing: 20, //espaçamento entre os eixos
          mainAxisSpacing: 20, //espaçamento da tela
          ),
          children: mockCategories.map(
            (categoria) {
              return ItemCategoria(categoria);
            }
          ).toList(),
      ),
    );
  }
}