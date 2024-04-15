import 'package:get/get.dart';
import 'package:progettoflutter/features/home/domain/repositories/dishes_repository.dart';
import '../../data/models/dishes.dart';

class DisheDetailController extends GetxController{

  int Id = Get.arguments['id'] ?? 0;

}