import 'package:firebase_auth/firebase_auth.dart';

class MyUser {
  MyUser({required this.user, required this.role});

  final User user;
  final String role;
}
