import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/theme.dart';
import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    final auth = Get.find<AuthController>();
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 240, 240),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width - (edge * 5),
               color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "E-Kerja",
                  style: BlackText.copyWith(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Sign in to your account",
                  style: BlackText.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.center,
                controller: controller.namaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelText: "Nama",
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.center,
                controller: controller.emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelText: "Email",
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              
              Obx(
                () => TextField(
                  textAlign: TextAlign.center,
                  obscureText: controller.isActive.value,
                  controller: controller.passwordController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => controller.changeActive(),
                        icon: Icon(Icons.remove_red_eye)),
                    fillColor: Colors.white,
                    labelText: "Password",
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                  ),
                ),
              ),
              

              SizedBox(height: 20),
              
              Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 13, 97, 165),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          textStyle: TextStyle(color: Colors.white)),
                      onPressed: () {
                        auth.signup(controller.emailController.text,
                            controller.passwordController.text);
                      },
                      child: Text('Signup'))),
                      SizedBox(height: 20),
             
              SizedBox(height: 20,),
              //Don't have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: BlackText.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed((Routes.SIGNUP));
                    },
                    child: Text(
                      "Login",
                      style: BlueText.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
              
            ],
          ),
        )));
  }
}
