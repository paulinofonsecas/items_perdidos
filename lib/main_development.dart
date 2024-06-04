// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:items_perdidos/app/app.dart';
import 'package:items_perdidos/bootstrap.dart';
import 'package:items_perdidos/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kIsWeb) {
    try {
      await FirebaseFirestore.instance
          .enablePersistence(const PersistenceSettings(synchronizeTabs: true));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  unawaited(bootstrap(() => const App()));
}
