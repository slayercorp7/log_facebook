/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tercer_parcial_m2/UI/SCREEN/inicio.dart';
import 'package:tercer_parcial_m2/UI/SCREEN/screen_pass.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class AuthService {
  //Determine if the user is authenticated and redirect accordingly
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            // user is authorozed hence redirect to home screen
            return Inicio();
          } else {
            return ScreenPass();
          }
        });
  }

  signInWithFacebook() async {
    final fb = FacebookLogin();
    // Log in
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

    // Check result status
    switch (res.status) {
      case FacebookLoginStatus.success:
        // The user is suceessfully logged in
        // Send access token to server for validation and auth
        final FacebookAccessToken? accessToken = res.accessToken;
        final AuthCredential authCredential =
            FacebookAuthProvider.credential(accessToken!.token);
        // ignore: unused_local_variable
        final result =
            await FirebaseAuth.instance.signInWithCredential(authCredential);

        // Get profile data from facebook for use in the app
        final profile = await fb.getUserProfile();
        print('Hello, ${profile!.name}! You ID: ${profile.userId}');

        // Get user profile image url
        final imageUrl = await fb.getProfileImageUrl(width: 100);
        print('Your profile image: $imageUrl');

        // fetch user email
        final email = await fb.getUserEmail();
        // But user can decline permission
        if (email != null) print('And your email is $email');

        break;

      case FacebookLoginStatus.cancel:
        // In case the user cancels the login process
        break;
      case FacebookLoginStatus.error:
        // Login procedure failed
        print('Error while log in: ${res.error}');
        break;
    }

    Future<UserCredential> signInWithGoogle() async {
      // Initiate the auth procedure
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(scopes: <String>["email"]).signIn();

      // fetch the auth details from the request made earlier
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      // Create a new credential for signing in with google
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }

    signOut() {
      FirebaseAuth.instance.signOut();
    }
  }
}*/
