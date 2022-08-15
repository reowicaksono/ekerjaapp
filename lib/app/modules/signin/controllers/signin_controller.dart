import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
 TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isActive = true.obs;
  void changeActive() {
    isActive.value = !isActive.value;
  }


  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
  
}
