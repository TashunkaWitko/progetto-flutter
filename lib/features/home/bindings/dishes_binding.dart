import 'package:get/get.dart';
import 'package:progettoflutter/features/home/data/repositories_impl/dishes_repositories_impl.dart';
import 'package:progettoflutter/features/home/domain/repositories/dishes_repository.dart';
import 'package:progettoflutter/features/home/presentation/controllers/dishes_controller.dart';
import '../data/datasources/dishes_datasource.dart';

class DishesBinding extends Bindings{

  @override
  void dependencies(){
    Get.lazyPut<DishesDatasource> (() => DishesDatasource());
    
    Get.lazyPut<DishesRepository> (() => DishesRepositoryImpl());

    Get.lazyPut<DishesController> (()=> DishesController());

  }
}