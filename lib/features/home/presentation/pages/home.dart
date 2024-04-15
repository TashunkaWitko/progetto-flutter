import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../routes/routes.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
      init: HomeController(),
      builder:
      (controller) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("HomePage"),
          ),
          body: Center(
            child: Column(
              children: [
              const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text("Benvenuto")
            ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network("https://www.manfredihotels.com/wp-content/uploads/2020/03/Aroma_Restaurant-Terrace_Detail_1-scaled.jpg", repeat: ImageRepeat.noRepeat, alignment: Alignment.center, height: 500,),
                  ),
                ],
              ),
            ),
          bottomSheet: Row(
            children: [
              IconButton(onPressed: ()=> Get.toNamed(Routes.MENU) , icon: Icon(Icons.menu_book)),
              Spacer(),
              IconButton(onPressed: ()=> Get.toNamed(Routes.HOME)  , icon: Icon(Icons.home)),
              Spacer(),
              IconButton(onPressed: ()=> Get.toNamed(Routes.CART) , icon: Icon(Icons.shopping_cart)),
            ],
          ),
      ),
    );
  }
}