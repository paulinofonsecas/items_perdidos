import 'package:flutter/material.dart';

class CategoriasWidget extends StatelessWidget {
  const CategoriasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final categorias = List.generate(10, (i) => 'CATEGORIA ${i + 1}');

    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          categorias.length,
          (i) => Container(
            height: 30,
            padding: const EdgeInsets.all(8),
            child: Chip(
              label: Text(categorias[i]),
            ),
          ),
        ),
      ),
    );
  }
}
