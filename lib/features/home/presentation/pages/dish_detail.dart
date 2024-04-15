import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progettoflutter/routes/routes.dart';
import '../controllers/dishes_controller.dart';

class DishDetailScreen extends StatelessWidget {
  const DishDetailScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {

    return GetBuilder<DishesController>(
      init: DishesController(),
      builder:
          (controller) =>  Scaffold(
           appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Menu"),
        ),
            body:  Center(
              child: Column(
                children: [
                  Card(
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 400,
                      height: 250,

                      child: Column(

                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomSheet: Row(
              children: [
                IconButton(onPressed: ()=> Get.toNamed(Routes.MENU) , icon: Icon(Icons.menu_book)),
                const Spacer(),
                IconButton(onPressed: ()=> Get.toNamed(Routes.HOME)  , icon: Icon(Icons.home)),
                const Spacer(),
                IconButton(onPressed: ()=> Get.toNamed(Routes.CART) , icon: Icon(Icons.shopping_cart)),
              ],
            ),
      ),
    );
  }
}