import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:items_perdidos/client/item_details/view/item_details_page.dart';

class ItemPerdidoWidget extends StatelessWidget {
  const ItemPerdidoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-aAc2hyGWJ67kqH3I1ZK-O0EJFzz52h2siQFO3njSLbLgiD7yNFXHhFjShsEeS_9_zEw&usqp=CAU',
                fit: BoxFit.cover,
                width: 90,
                height: 90,
              ),
              const Gutter(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pasta preta de couro',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Text(
                      'Pasta preta de couro, Pasta preta de couro,'
                      ' Pasta preta de couro',
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(ItemDetailsPage.route());
                },
                icon: const Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
          const GutterSmall(),
          const Divider(),
        ],
      ),
    );
  }
}
