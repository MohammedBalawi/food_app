import 'package:food_app/context/app_constants.dart';
import 'package:food_app/controller/popular_proguct_controller.dart';
import 'package:food_app/data/api/api_clinet.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
Future<void> init()async{
Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.APP_URL));
Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
Get.put(PopularProductRepo(apiClient: Get.find()));
Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}