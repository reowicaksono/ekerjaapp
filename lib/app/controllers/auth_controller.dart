import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance; //firebaseAuth is a singleton class

  //To get the user
  Stream<User?> get streamuser => firebaseAuth.authStateChanges();

  //Login
  void login(String email, String password) async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((user) {
        Get.offAllNamed(Routes.HOME);
      }).catchError((e) {
        Get.snackbar("Error", e.message, snackPosition: SnackPosition.BOTTOM);
      });
    } catch (e) {
      Get.defaultDialog(title: 'error', middleText: "error ${e}");
    }
  }

  //Logout
  void logout() async {
    await firebaseAuth.signOut().then((user) {
      Get.offAllNamed(Routes.SIGNIN);
    }).catchError((e) {
      Get.defaultDialog(title: 'error', middleText: "error ${e}");
    });
  }

  void signup(String email, String password) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
            user.user!.sendEmailVerification();
        Get.offNamed(Routes.SuccessPage);
      }).catchError((e) {
        Get.snackbar("Error", e.message, snackPosition: SnackPosition.BOTTOM);
      });
      
    } catch (e) {
      Get.defaultDialog(title: 'error', middleText: "error ${e}");
    }
  }
}
