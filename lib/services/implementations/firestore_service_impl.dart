import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vsewa/services/firestore_service.dart';

class FireStoreServiceImpl implements FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  CollectionReference collection(String path) {
    return _firestore.collection(path);
  }

  @override
  Future<void> createProduct({Map<String, dynamic> data}) async {
    try {
      await _firestore.collection("products").add(data);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<QuerySnapshot> getCollectionsList(
      {String collectionPath, Map<String, dynamic> condition}) async {
    try {
      return (await _firestore.collection(collectionPath).get());
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<void> updateDocument(
      {String collectionPath,
      String documentId,
      Map<String, dynamic> data}) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).update(data);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<DocumentSnapshot> getDocument(
      {String collectionPath, String documentId}) async {
    try {
      return (await _firestore
          .collection(collectionPath)
          .doc(documentId)
          .get());
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<void> createUser({Map<String, dynamic> data}) async {
    try {
      await _firestore.collection("users").add(data);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future deleteDocument({String collectionPath, String documentId}) async {
    try {
      await _firestore.collection(collectionPath).doc(documentId).delete();
    } catch (e) {}
  }
}
