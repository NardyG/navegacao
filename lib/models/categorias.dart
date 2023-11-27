// Importa o pacote Flutter para construção da interface
import 'package:flutter/material.dart';

// Classe que representa uma categoria
class Categoria {
  // Propriedades da categoria
  final String id; // Identificador único da categoria
  final String titulo; // Título da categoria
  final Color color; // Cor associada à categoria (padrão é laranja)

  // Construtor da classe Categoria
  const Categoria({
    required this.id, // Parâmetro obrigatório: identificador
    required this.titulo, // Parâmetro obrigatório: título
    this.color = Colors.orange, // Parâmetro opcional: cor (padrão é laranja)
  });
}
