import 'package:flutter/material.dart';
import 'package:items_perdidos/client/client_home/client_home.dart';
import 'package:items_perdidos/global_features/login/view/login_page.dart';
import 'package:items_perdidos/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const ClientHomePage(),
    );
  }
}
