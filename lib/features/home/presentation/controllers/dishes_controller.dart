import 'package:get/get.dart';
import 'package:progettoflutter/features/home/domain/repositories/dishes_repository.dart';
import '../../data/models/dishes.dart';

class DishesController extends GetxController{

  final DishesRepository dishesRepository = Get.find<DishesRepository>();

  List<Dishes> dishes =[];

  @override
  void onInit() {
    super.onInit();
    getItems();
  }

  void getItems()async {
    dishes = await dishesRepository.getDishes();
    update();
  }

  List<Dishes> get items{
    return dishes;
   }

}


