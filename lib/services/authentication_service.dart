import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:vsewa/di.dart';
import 'package:vsewa/model/user_model.dart';
import 'package:vsewa/services/firestore_service.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirestoreService _firestoreService = locator<FirestoreService>();

  UserModel _currentUser;
  UserModel get currentUser => _currentUser;

  Future loginWithEmail(
      {@required String email, @required String password}) async {
    try {
      var authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _populateCurrentuUser(authResult.user);
      return (authResult.user != null);
    } catch (e) {
      return e.message;
    }
  }

  Future signUpWithEmail({
    @required String fullName,
    @required String email,
    @required String password,
    @required String phoneNumber,
  }) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // create new user profile on firestore
      await _firestoreService.createUser(
          data: UserModel(
        id: authResult.user.uid,
        email: email,
        phoneNumber: phoneNumber,
        fullName: fullName,
        // isRider: true,
      ).toJson());
      return (authResult.user != null);
    } catch (e) {
      return e.message;
    }
  }

  Future<bool> isUserLoggedIn() async {
    User user = _firebaseAuth.currentUser;
    await _populateCurrentuUser(user);
    return user != null;
  }

  Future<void> logout() {
    return _firebaseAuth.signOut();
  }

  Future _populateCurrentuUser(User user) async {
    if (user != null) {
      // ignore: unused_local_variable
      var _currentUser = await _firestoreService.getDocument(
          collectionPath: "users", documentId: user.uid);
    }
  }
}
