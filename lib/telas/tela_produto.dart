// Importa os pacotes necessários
import 'package:flutter/material.dart';
import 'package:navegacao/models/produtos.dart'; // Importa o modelo de produtos
import 'package:navegacao/componentes/produto_item.dart'; // Importa o componente ItemProduto

// Classe que representa a tela de produtos
class TelaProdutos extends StatefulWidget {
  final List<Produto> produtosValidos; // Lista de produtos válidos
  TelaProdutos(this.produtosValidos); // Construtor que recebe a lista de produtos válidos

  @override
  State<TelaProdutos> createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
  String? tituloCategoria; // Título da categoria
  List<Produto>? displayProdutos; // Lista de produtos a serem exibidos

  @override
  void didChangeDependencies() {
    // Obtém os argumentos da rota para obter informações sobre a categoria
    final argumentosRota =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    tituloCategoria = argumentosRota['title']!; // Obtém o título da categoria
    final categoryId = argumentosRota['id']; // Obtém o ID da categoria

    // Filtra os produtos válidos para exibir apenas os da categoria específica
    displayProdutos = widget.produtosValidos.where((produto) {
      return produto.categories.contains(categoryId);
    }).toList();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tituloCategoria!)), // Exibe o título da categoria na barra de aplicativos
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          // Para cada produto na lista, cria um widget ItemProduto
          return ItemProduto(
            id: displayProdutos![index].id,
            title: displayProdutos![index].title,
            imageUrl: displayProdutos![index].imageUrl,
            duration: displayProdutos![index].duration.toDouble(),
            cost: displayProdutos![index].cost,
          );
        },
        itemCount: displayProdutos!.length, // Define a quantidade de itens na lista
      ),
    );
  }
}
