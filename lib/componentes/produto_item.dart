// Importa o pacote Flutter para construção da interface
import 'package:flutter/material.dart';

// Classe que representa um item de produto na interface
class ItemProduto extends StatelessWidget {
  // Propriedades do item de produto
  final String id; // Identificador único do produto
  final String title; // Título do produto
  final String imageUrl; // URL da imagem do produto
  final double duration; // Duração do produto (em minutos)
  final double cost; // Custo do produto

  // Construtor que recebe os parâmetros necessários ao criar o objeto
  ItemProduto({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.cost,
  });

  // Método que constrói a interface do item de produto
  @override
  Widget build(BuildContext context) {
    // Retorna um widget InkWell que responde a toques
    return InkWell(
      onTap: (() => {}), // Configura a ação ao tocar no item (atualmente vazio)
      child: Card(
        // Configuração do cartão que representa o item de produto
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), // Borda arredondada do cartão
        elevation: 4, // Elevação do cartão para dar uma sombra
        margin: EdgeInsets.all(10), // Margem ao redor do cartão
        child: Column(children: <Widget>[
          // Uma pilha (Stack) para sobrepor a imagem e o texto
          Stack(
            children: <Widget>[
              // ClipRRect é usado para cortar a imagem com bordas arredondadas
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // Posiciona o texto no canto inferior esquerdo sobre a imagem
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 300,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )
            ],
          ),
          // Padding e Row para exibir informações adicionais sobre o produto
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Informações sobre a duração do produto
                Row(
                  children: <Widget>[
                    const Icon(Icons.schedule),
                    const SizedBox(
                      width: 6,
                    ),
                    Text('$duration min'),
                  ],
                ),
                // Informações adicionais (neste caso, "Teste")
                Row(
                  children: <Widget>[
                    const Icon(Icons.work),
                    const SizedBox(
                      width: 6,
                    ),
                    Text("Teste"),
                  ],
                ),
                // Informações sobre o custo do produto
                Row(
                  children: <Widget>[
                    const Icon(Icons.attach_money),
                    const SizedBox(
                      width: 6,
                    ),
                    Text('$cost'),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
