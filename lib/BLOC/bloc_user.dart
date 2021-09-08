// ignore: import_of_legacy_library_into_null_safe
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tercer_parcial_m2/REPOSITORY/auth_repository.dart';

class BlocUser implements Bloc {
  final _authRepository = AuthRepository();
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  // ignore: non_constant_identifier_names
  Stream<User?> get AuthStatus => streamFirebase;
  Future<UserCredential?> signIn() {
    return _authRepository.signInFirebase();
  }

  @override
  void dispose() {}
}
