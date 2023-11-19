import 'package:navegacao/telas/tela_produto.dart';
import 'package:navegacao/data/produtos.dart';
import 'package:navegacao/models/produtos.dart';
import 'package:flutter/material.dart';
import 'utils/rotas.dart';

//depois de programar a tela
import 'telas/tela_categorias.dart';
 
void main() => runApp(AppCardapio());
 // style: Theme.of(context).textTheme.titleSmall, vai no categoria
class AppCardapio extends StatelessWidget {
  List<Produto> produtosValidos = dummyProdutos;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Schyler',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleSmall : const TextStyle(
            fontSize: 20,
            fontFamily: "Schyler"
          ) 
        )
      ),
      //home: TelaCategorias(),
      routes: {
        Rotas.HOME : (ctx) => TelaCategorias(),
        Rotas.PRODUTOS : (ctx) => TelaProdutos(produtosValidos), 
      }
      
    );
  }
}