import 'package:flutter/material.dart';
import 'package:navegacao/componentes/item_categoria.dart';
import 'package:navegacao/models/categorias.dart';

class TelaProdutos extends StatelessWidget {
  //final Categoria categoria;
  //TelaProdutos(this.categoria);

  // Lista de pratos fictícia para a demonstração
  //final List<String> pratos = [
    //'Prato 1',
    //'Prato 2',
    //'Prato 3',
  //];

  @override
  Widget build(BuildContext context) {

    final categoria = ModalRoute.of(context)?.settings.arguments as Categoria;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Produto"),
      ),
      body: Column(
        children: [
          Text("Categoria escolhida: ${categoria.titulo}"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}