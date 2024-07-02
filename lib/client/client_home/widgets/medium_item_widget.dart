import 'package:flutter/material.dart';

class MediumItemWidget extends StatelessWidget {
  MediumItemWidget({
    super.key,
  });

  final BorderRadius borderRadius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width * 0.4;

    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: itemWidth,
        margin: const EdgeInsets.only(
          right: 16,
          left: 8,
          bottom: 8,
          top: 8,
        ),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 3,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-aAc2hyGWJ67kqH3I1ZK-O0EJFzz52h2siQFO3njSLbLgiD7yNFXHhFjShsEeS_9_zEw&usqp=CAU',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pasta preta de couro',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'Pasta preta de couro, Pasta preta de couro,'
                      ' Pasta preta de couro',
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
