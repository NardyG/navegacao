import 'package:flutter/material.dart';
import 'package:navegacao/models/produtos.dart';
import 'package:navegacao/componentes/produto_item.dart';

class TelaProdutos extends StatefulWidget {

  final List<Produto> produtosValidos;
  TelaProdutos(this.produtosValidos);

  @override
  State<TelaProdutos> createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
  String? tituloCategoria;
  List<Produto>? displayProdutos;

@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final argumentosRota =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    tituloCategoria = argumentosRota['title']!;
    final categoryId = argumentosRota['id'];
    //montando vetor de produtos
    displayProdutos = widget.produtosValidos.where((produto) {
      return produto.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tituloCategoria!)),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ItemProduto(
            id: displayProdutos![index].id,
            title: displayProdutos![index].title,
            imageUrl: displayProdutos![index].imageUrl,
               duration: displayProdutos![index].duration.toDouble(),
            cost: displayProdutos![index].cost,
          );
          //return Text(displayProdutos[index].title);
        },
        itemCount: displayProdutos!.length,
      ),
    );
  }
}