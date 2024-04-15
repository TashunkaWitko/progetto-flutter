import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;

  static get uid{
    auth.currentUser!.uid;
  }

  static void login({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      Get.closeAllSnackbars();
      Get.showSnackbar(GetSnackBar(
        message: "${e.message}",
        title: "Authentication failed",
        duration: const Duration(seconds: 3),
      ));
    }
  }

  static void logout(){
    auth.signOut();
  }
}