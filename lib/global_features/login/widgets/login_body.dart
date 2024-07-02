import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:items_perdidos/app/view/login_loading.dart';

/// {@template login_body}
/// Body of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class LoginBody extends StatelessWidget {
  /// {@macro login_body}
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      auth: FirebaseAuth.instance,
      providers: [EmailAuthProvider()],
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginLoadingScreen(),
            ),
          );
        }),
      ],
    );
  }
}

