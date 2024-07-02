import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:items_perdidos/client/client_home/widgets/item_perdido_widget.dart';

class ItemsRecentesWidget extends StatelessWidget {
  const ItemsRecentesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Itens recentes',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const GutterSmall(),
          ...List.generate(
            50,
            (i) => const ItemPerdidoWidget(),
          ),
        ],
      ),
    );
  }
}
