// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:items_perdidos/client/client_home/client_home.dart';
import 'package:items_perdidos/data/entitys/my_user.dart';
import 'package:items_perdidos/utils/get_it.dart';

class LoginLoadingScreen extends StatefulWidget {
  const LoginLoadingScreen({super.key});

  @override
  State<LoginLoadingScreen> createState() => _LoginLoadingScreenState();
}

class _LoginLoadingScreenState extends State<LoginLoadingScreen> {
  @override
  void initState() {
    preparerUser();
    super.initState();
  }

  Future<void> preparerUser() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      var userRule = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get()
          .then((data) {
        return data.data()?['role'] as String?;
      });

      if (userRule == null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'role': 'user',
        });
        userRule = 'user';
      }

      getIt.registerLazySingleton(
        () => MyUser(user: user, role: userRule!),
      );
      unawaited(Navigator.of(context).push(ClientHomePage.route()));
    } else {
      // unawaited(router.pushReplacement('/sign-in'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
