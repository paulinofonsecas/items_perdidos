import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:items_perdidos/client/client_home/widgets/itens_vistos_grid_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const GutterSmall(),
          const ItensVistosGridWidget(),
        ],
      ),
    );
  }
}
