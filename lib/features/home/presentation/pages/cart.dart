import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../routes/routes.dart';
import '../controllers/home_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
      init: HomeController(),
      builder:
          (controller) => Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  title: const Text("Carrello"),
            ),
                body: const Center(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child:Text("Carrello")
                  ),
                ],
              ),
            ),
            bottomSheet:
            Row(
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