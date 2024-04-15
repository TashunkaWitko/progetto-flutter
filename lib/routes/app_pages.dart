import 'package:get/get.dart';
import 'package:progettoflutter/features/home/bindings/dishes_binding.dart';
import 'package:progettoflutter/features/login/login.dart';
import 'package:progettoflutter/routes/routes.dart';
import '../features/home/presentation/pages/cart.dart';
import '../features/home/presentation/pages/dish_detail.dart';
import '../features/home/presentation/pages/home.dart';
import '../features/home/presentation/pages/menu.dart';


class AppPages{

  static const INITIAL = Routes.LOGIN;
  
  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: null,
    ),
    GetPage(
        name: Routes.LOGIN,
        page: () => LoginScreen(),
        binding: null
    ),
    GetPage(
        name: Routes.MENU,
        page: () => MenuScreen(),
        binding: DishesBinding(),
    ),
    GetPage(
        name: Routes.CART,
        page: () => CartScreen(),
        binding: null
    ),
    GetPage(
        name: Routes.DETAIL,
        page: () => DishDetailScreen(id: 1,),
        binding: DishesBinding(),
    ),
  ];
}