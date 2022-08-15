import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  var isActive = true.obs;

  void changeActive(){
    isActive.value = !isActive.value;
  }
}
