import 'package:flutter/material.dart';
import 'package:navegacao/telas/tela_categoria.dart';
import 'package:navegacao/telas/tela_produtos.dart';
import 'package:navegacao/utils/rotas.dart';

void main() {
  runApp(MeuCardapio());
}

class MeuCardapio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Cardápio",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      //home: TelaCategorias(),
      routes:{
       Rotas.HOME : (ctx) => TelaCategorias(),
       Rotas.PRODUTOS : (ctx) => TelaProdutos(),
     }
    );
  }
}
