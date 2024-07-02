import 'package:flutter/material.dart';
import 'package:items_perdidos/client/item_details/bloc/bloc.dart';
import 'package:items_perdidos/client/item_details/widgets/item_details_body.dart';

/// {@template item_details_page}
/// A description for ItemDetailsPage
/// {@endtemplate}
class ItemDetailsPage extends StatelessWidget {
  /// {@macro item_details_page}
  const ItemDetailsPage({super.key});

  /// The static route for ItemDetailsPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const ItemDetailsPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemDetailsBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pasta de couro preta'),
        ),
        body: const ItemDetailsView(),
      ),
    );
  }
}

/// {@template item_details_view}
/// Displays the Body of ItemDetailsView
/// {@endtemplate}
class ItemDetailsView extends StatelessWidget {
  /// {@macro item_details_view}
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ItemDetailsBody();
  }
}
