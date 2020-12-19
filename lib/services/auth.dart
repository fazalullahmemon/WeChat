import 'package:firebase_auth/firebase_auth.dart';

import '../model/user.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  myUser _loggedInUser(User user) {
    return user != null ? myUser(user.uid) : null; 
  }
  Future signInWithEmailAndPassword(String email, String password) async  {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _loggedInUser(user);
    } catch (e) {
      print(e.toString());
    }
  }
  Future signUpWithEmailAndPassowrd(String email, String password) async {
    try {
      UserCredential signUp = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User signUpUser = signUp.user;
      return _loggedInUser(signUpUser);
    } catch (e) {
      print(e.toString());
    }
  }
  Future resetPassword(String email) async{
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }
  Future signOut() async {
    try {
      return _auth.signOut();   
    } catch (e) {
      print(e.toString());
    }
  }
}
