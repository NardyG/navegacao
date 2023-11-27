// Importa os pacotes necessários
import 'package:navegacao/telas/tela_produtos.dart'; // Importa a tela de produtos
import 'package:flutter/material.dart'; // Importa o pacote de Flutter para construção da interface
import '../models/categorias.dart'; // Importa o modelo de categorias
import '../utils/rotas.dart'; // Importa as rotas definidas na aplicação

// Classe que representa um item de categoria na interface
class CategoriaItem extends StatelessWidget {
  
  // Propriedade para armazenar a categoria associada a este item
  final Categoria categoria;

  // Construtor que recebe uma categoria ao criar o objeto
  CategoriaItem(this.categoria);

  // Método para lidar com a seleção de uma categoria
  void selecionarCategoria(BuildContext context) {
    // PROGRAMAR: Lógica para o que acontece ao selecionar uma categoria
    // Atualmente, está comentado, mas pode ser substituído por um código personalizado
    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (_){
    //     return TelaProdutos(categoria);
    //   })
    // );

    // Utiliza o Navigator para navegar para a tela de produtos com argumentos específicos
    Navigator.of(context).pushNamed(Rotas.PRODUTOS, arguments: {'id': categoria.id, 'title': categoria.titulo});
  }
  
  // Método que constrói a interface do item de categoria
  @override
  Widget build(BuildContext context) {
    // Retorna um widget InkWell que responde a toques
    return InkWell(
      onTap: () => selecionarCategoria(context), // Configura a ação ao tocar no item
      child: Container(
        padding: EdgeInsets.all(15), // Preenchimento interno do contêiner
        child: Text(categoria.titulo), // Exibe o título da categoria
        decoration: BoxDecoration(
          // Configuração da decoração do contêiner (gradiente e borda arredondada)
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              categoria.color.withOpacity(0.5),
              categoria.color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
