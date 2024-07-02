import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:items_perdidos/data/entitys/item.dart';

abstract class BaseService {
  Future<bool> addItem(Item item);
  Future<Item?> deleteItem(String id);
  Future<Item?> getItem(String id);
  Future<List<Item>> getItems();
}

class FirebaseService implements BaseService {
  FirebaseService({
    FirebaseFirestore? firestore,
    FirebaseStorage? storage,
  }) {
    this.firestore = firestore ?? FirebaseFirestore.instance;
    this.storage = storage ?? FirebaseStorage.instance;
  }

  late final FirebaseFirestore firestore;
  late final FirebaseStorage storage;

  @override
  Future<bool> addItem(Item item) async {
    try {
      // savel image to storage
      final imageRef = storage.ref().child('images/${item.id}.jpg');
      await imageRef.putFile(File(item.imageURL));

      final saveItem = item.copyWith(imageURL: await imageRef.getDownloadURL());
      final map = saveItem.toMap();

      await firestore.collection('items').add(map);
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  @override
  Future<Item?> deleteItem(String id) async {
    try {
      final query = firestore.collection('items').where('id', isEqualTo: id);
      final snapshot = await query.get();
      if (snapshot.docs.isNotEmpty) {
        final doc = snapshot.docs.first;
        await doc.reference.delete();
        return Item.fromMap(doc.data());
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  @override
  Future<Item?> getItem(String id) async {
    try {
      final query = firestore.collection('items').where('id', isEqualTo: id);
      final snapshot = await query.get();
      if (snapshot.docs.isNotEmpty) {
        final data = snapshot.docs.first.data();
        return Item.fromMap(data);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  Future<bool> updateItem(Item item) async {
    try {
      final query =
          firestore.collection('items').where('id', isEqualTo: item.id);
      final snapshot = await query.get();
      if (snapshot.docs.isNotEmpty) {
        final doc = snapshot.docs.first;

        if (doc.data()['imageUrl'] != item.imageURL) {
          await saveImages(item, doc);
        }

        await doc.reference.update(item.toMap());
        return true;
      }
      return false;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  Future<void> saveImages(
    Item item,
    QueryDocumentSnapshot<Map<String, dynamic>> doc,
  ) async {
    final imageRef = storage.ref().child('images/${item.id}.jpg');
    await imageRef.putFile(File(item.imageURL));
    await doc.reference.update({'imageUrl': await imageRef.getDownloadURL()});
  }

  @override
  Future<List<Item>> getItems() {
    return firestore
        .collection('items')
        .orderBy('foundAt', descending: true)
        .get()
        .then((value) {
      return value.docs.map((e) => Item.fromMap(e.data())).toList();
    });
  }
}
