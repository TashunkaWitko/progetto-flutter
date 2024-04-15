import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progettoflutter/routes/routes.dart';
import '../controllers/dishes_controller.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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

                      children:[
                        Text(controller.dishes[0].name),
                        Image.network(controller.dishes[0].image, height: 200,),
                        Text("€ " + controller.dishes[0].price )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          bottomSheet: Row(
            children: [
              IconButton(onPressed: ()=> Get.toNamed(Routes.MENU), icon: Icon(Icons.menu_book)),
              const Spacer(),
              IconButton(onPressed: ()=> Get.toNamed(Routes.HOME), icon: Icon(Icons.home)),
              const Spacer(),
              IconButton(onPressed: ()=> Get.toNamed(Routes.CART), icon: Icon(Icons.shopping_cart)),
              ],
            ),
          ),
        );
      }
    }