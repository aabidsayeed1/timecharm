import 'dart:async';
import 'package:get/get.dart';
import 'package:time_charm/presentation/routes/routes_string.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () {
      Get.offAndToNamed(AppRoutePage.home);
    });
    super.onInit();
  }
}
