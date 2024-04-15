import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progettoflutter/features/home/presentation/controllers/login_controller.dart';
import '../home/presentation/controllers/validators.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  String enteredPassword = "";

  String enteredEmail = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      title: const Text("Login"),
    ),
      body:
      GetBuilder<LoginController>(
        init: LoginController(),
        builder:
        (controller) =>
            Center(
              child:
              Form(
              key: controller.formKey,

              child: SafeArea(

                child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),

                    child: TextFormField(
                      validator: validateEmail,
                      onSaved: (value) {
                        enteredEmail = value!;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: "Inserisci la mail"),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      validator: validatePassword,
                      onSaved: (value) {
                        enteredPassword = value!;
                      },
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          hintText: "Inserisci la password"),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () => controller.login(enteredEmail,enteredPassword),
                        child: const Text("Accedi")
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}