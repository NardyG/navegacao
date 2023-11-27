// Classe que representa um produto
class Produto {
  // Propriedades do produto
  final String id; // Identificador único do produto
  final List<String> categories; // Lista de categorias às quais o produto pertence
  final String title; // Título do produto
  final String imageUrl; // URL da imagem do produto
  final double duration; // Duração de preparo do produto (em minutos)
  final double cost; // Custo do produto
  final bool isGlutenFree; // Indica se o produto é sem glúten
  final bool isLactoseFree; // Indica se o produto é sem lactose
  final bool isVegan; // Indica se o produto é vegano
  final bool isVegetarian; // Indica se o produto é vegetariano

  // Construtor da classe Produto
  const Produto({
    required this.id, // Parâmetro obrigatório: identificador
    required this.categories, // Parâmetro obrigatório: lista de categorias
    required this.title, // Parâmetro obrigatório: título
    required this.imageUrl, // Parâmetro obrigatório: URL da imagem
    required this.duration, // Parâmetro obrigatório: duração de preparo
    required this.cost, // Parâmetro obrigatório: custo
    required this.isGlutenFree, // Parâmetro obrigatório: informação sobre glúten
    required this.isLactoseFree, // Parâmetro obrigatório: informação sobre lactose
    required this.isVegan, // Parâmetro obrigatório: informação sobre veganismo
    required this.isVegetarian, // Parâmetro obrigatório: informação sobre vegetarianismo
  });
}
