import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progettoflutter/features/home/presentation/controllers/auth.dart';
import '../../../../routes/routes.dart';


class LoginController extends GetxController{

  final formKey = GlobalKey<FormState>();

  static final auth = FirebaseAuth.instance;
  
   void login(String email, String password) async {
    if (formKey.currentState!.validate()) {

      formKey.currentState!.save();
      try{await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.showSnackbar(const
      GetSnackBar(
        message:'Login effettuato' ,
        duration: Duration(milliseconds: 700),
      ));
      Get.toNamed(Routes.HOME);
      }
      on FirebaseAuthException catch(e){
        print(e);
      }


    }
    return null;
  }
}
