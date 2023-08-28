import 'package:flutter/material.dart';
import 'package:food_app/controller/popular_proguct_controller.dart';
import 'package:food_app/screen/appBar_screen.dart';
import 'package:food_app/screen/food_screen.dart';
import 'package:food_app/screen/view_food.dart';
import 'helper/dependencies.dart' as dep;
import 'package:get/get.dart';

Future<void> main() async{
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.find<PopularProductController>().getPopularProductList();
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/appBar_screen',
      routes: {
        '/appBar_screen' : (context) => const AppBarScreen(),
        '/food_screen' : (context) => const FoodScreen(),
        '/view_food' : (context) => const ViewFood(),
      },
    );

  }
}
