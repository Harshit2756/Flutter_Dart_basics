import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reddit_clone/core/constants/constants.dart';
import 'package:reddit_clone/core/constants/firebase_constants.dart';
import 'package:reddit_clone/core/providers/firebase_provider.dart';
import 'package:reddit_clone/models/user_model.dart';

final authRespositoryProvider = Provider(
  (ref) => AuthRespository(
    firebaseFirestore: ref.read(firestoreProvider),
    firebaseAuth: ref.read(authProvider),
    googleSignIn: ref.read(googleSignInProvider),
  ),
);

class AuthRespository {
  // . firebaseFirestore is used to access the firestore database and perform operations on it
  final FirebaseFirestore _firebaseFirestore;
  // . firebaseAuth is used to sign in 
  final FirebaseAuth _firebaseAuth;
  // . googleSignIn is used to authenticate the user using google
  final GoogleSignIn _googleSignIn;

  AuthRespository({
    required FirebaseFirestore firebaseFirestore,
    required FirebaseAuth firebaseAuth,
    required GoogleSignIn googleSignIn,
  })  : _firebaseFirestore = firebaseFirestore,
        _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn;
  CollectionReference get _userCollection =>
      _firebaseFirestore.collection(FirebaseConstants.usersCollection);

  void signInWithGoogle() async {
    try {
      // . here we are using the google sign in package to get the user details and store it in the googleUser variable
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      // . here we are using the google sign in package to get the authentication details such as the access token and id token and store it in the googleAuth variable
      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // . using the credential we are signing in the user to firebase and storing the user details in the userCredential variable
      UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      UserModel userModel = UserModel(
        name: userCredential.user!.displayName ?? "No Name",
        profilePic: userCredential.user!.photoURL ?? Constants.avatarDefault,
        banner: Constants.bannerDefault,
        uid: userCredential.user!.uid,
        isVerified: true,
        karma: 0,
        awards: [],
      );

      await _userCollection
          .doc(userCredential.user!.uid)
          .set(userModel.toMap());
      debugPrint('User: ${userCredential.user!.displayName}');
    } catch (E) {
      debugPrint('Error: ${E.toString()}');
    }
  }
}
