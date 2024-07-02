import 'package:flutter/material.dart';
import 'package:items_perdidos/client/client_home/bloc/bloc.dart';
import 'package:items_perdidos/client/client_home/widgets/client_home_body.dart';

/// {@template client_home_page}
/// A description for ClientHomePage
/// {@endtemplate}
class ClientHomePage extends StatelessWidget {
  /// {@macro client_home_page}
  const ClientHomePage({super.key});

  /// The static route for ClientHomePage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const ClientHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClientHomeBloc(),
      child: Scaffold(
        body: const ClientHomeView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class ClientHomeView extends StatelessWidget {
  /// {@macro client_home_view}
  const ClientHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClientHomeBody();
  }
}
