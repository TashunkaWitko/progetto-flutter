import '../../data/models/dishes.dart';

abstract class DishesRepository {

  Future<List<Dishes>> getDishes();

}