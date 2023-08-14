import 'package:flutter/material.dart';
import 'package:navegacao/models/categorias.dart';

class ItemCategoria extends StatelessWidget {

  final Categoria categoria;

  ItemCategoria(this.categoria);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(categoria.titulo),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            categoria.color.withOpacity(0.5),
            categoria.color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft
          )
      ),
    );
  }
}