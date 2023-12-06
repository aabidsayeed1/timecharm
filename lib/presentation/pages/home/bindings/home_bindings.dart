import 'package:get/get.dart';
import 'package:time_charm/presentation/pages/home/controller/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
