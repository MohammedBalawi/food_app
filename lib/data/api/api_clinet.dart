import 'package:food_app/context/app_constants.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;

  final String appBaseUrl;

  late Map<String, String> _mainHeader;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token= AppConstants.TOKEN;
    _mainHeader = {
      'Content_type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri,) async {
     Response response =  await get(uri);
     return response;


  }
}
