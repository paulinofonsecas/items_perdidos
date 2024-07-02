import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:items_perdidos/client/client_home/categorias_widget.dart';
import 'package:items_perdidos/client/client_home/widgets/info_widget.dart';
import 'package:items_perdidos/client/client_home/widgets/items_recentes_widget.dart';

/// {@template client_home_body}
/// Body of the ClientHomePage.
///
/// Add what it does
/// {@endtemplate}
class ClientHomeBody extends StatelessWidget {
  /// {@macro client_home_body}
  const ClientHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          GutterLarge(),
          _HeaderWidget(),
          GutterLarge(),
          InfoWidget(
            title: 'Vistos recentemente',
          ),
          GutterLarge(),
          CategoriasWidget(),
          GutterLarge(),
          InfoWidget(
            title: 'Documentos',
          ),
          GutterLarge(),
          InfoWidget(
            title: 'Carteiras',
          ),
          GutterLarge(),
          InfoWidget(
            title: 'Acessorios',
          ),
          GutterLarge(),
          ItemsRecentesWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          Text(
            'Bem-vindo ao \nPerdidos e achados',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const UserAvatar(
            size: 40,
          ),
        ],
      ),
    );
  }
}
