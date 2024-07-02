import 'package:flutter/material.dart';
import 'package:items_perdidos/client/client_home/widgets/medium_item_widget.dart';

class ItensVistosGridWidget extends StatelessWidget {
  const ItensVistosGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const listHeight = 240.0;

    final itens = List.generate(
      50,
      (i) => MediumItemWidget(),
    ).toList();

    return SizedBox(
      height: listHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => itens[index],
      ),
    );
  }
}
