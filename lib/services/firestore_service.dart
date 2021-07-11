import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

abstract class FirestoreService {
  CollectionReference collection(String path);

  /// Create a product...
  Future<void> createProduct({
    Map<String, dynamic> data,
  });

  ///Create a user...
  Future<void> createUser({
    Map<String, dynamic> data,
  });

  /// Create a document...
  Future<void> updateDocument({
    @required String collectionPath,
    @required String documentId,
    Map<String, dynamic> data,
  });

  /// Get collections list
  Future<QuerySnapshot> getCollectionsList({
    @required String collectionPath,
    Map<String, dynamic> condition,
  });

  /// Get document
  Future<DocumentSnapshot> getDocument({
    @required String collectionPath,
    @required String documentId,
  });

  /// Delete document
  Future deleteDocument({
    @required String collectionPath,
    @required String documentId,
  });
}
