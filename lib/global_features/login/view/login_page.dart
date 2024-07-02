import 'package:flutter/material.dart';
import 'package:items_perdidos/global_features/login/bloc/bloc.dart';
import 'package:items_perdidos/global_features/login/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const Scaffold(
        body: LoginView(),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
  }
}
