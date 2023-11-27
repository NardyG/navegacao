// Importa os pacotes necessários
import 'package:navegacao/data/categorias.dart'; // Importa os dados de categorias (presumivelmente do arquivo data/categorias.dart)
import 'package:navegacao/models/categorias.dart'; // Importa o modelo de categorias
import 'package:flutter/material.dart'; // Importa o pacote Flutter para construção da interface
import '../componentes/categoria_item.dart'; // Importa o componente CategoriaItem

// Classe que representa a tela de categorias
class TelaCategorias extends StatefulWidget {
  @override
  State<TelaCategorias> createState() => _TelaCategoriasState();
}

class _TelaCategoriasState extends State<TelaCategorias> {
  late Future<List<dynamic>> categoriaFuturo; // Futuro para armazenar dados de categorias

  @override
  void initState() {
    super.initState();
    categoriaFuturo = dadosCategoria(); // Inicializa o futuro com dados de categorias
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardápio do CEFETMG"), // Título da barra de aplicativos
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: categoriaFuturo,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Se há dados disponíveis, constrói um GridView com base nos dados
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  // Para cada item de categoria, cria um widget CategoriaItem
                  return CategoriaItem(
                    Categoria(
                      id: snapshot.data![index]['id_categoria'],
                      titulo: snapshot.data![index]['titulo'],
                      color: Color(int.parse('0x${snapshot.data![index]['cor']}')),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              // Se houver um erro, exibe uma mensagem de erro
              return Text('${snapshot.error}');
            }
            // Se ainda estiver carregando os dados, exibe um indicador de carregamento
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
