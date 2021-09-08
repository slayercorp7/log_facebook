import 'package:firebase_auth/firebase_auth.dart';
import 'package:tercer_parcial_m2/REPOSITORY/auth_firebase.dart';
import 'firebase_auth.dart';

class AuthRepository {
  // ignore: non_constant_identifier_names
  final _AuthFirebase = AuthFirebase();
  final _AuthFirebaseG = AuthFirebaseG();
  Future<UserCredential?> signInFirebase() =>
      _AuthFirebase.signInWithFacebook();
}
