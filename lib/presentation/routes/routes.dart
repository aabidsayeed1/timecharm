import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:time_charm/presentation/pages/home/bindings/home_bindings.dart';
import 'package:time_charm/presentation/pages/home/home_page.dart';
import 'package:time_charm/presentation/pages/splash/bindings/splash_bindings.dart';
import 'package:time_charm/presentation/pages/splash/splash_page.dart';
import 'package:time_charm/presentation/routes/routes_string.dart';

appRoutes() => [
      GetPage(
        name: AppRoutePage.splash,
        binding: SplashBindings(),
        page: () => SplashPage(),
      ),
      GetPage(
        name: AppRoutePage.home,
        binding: HomeBindings(),
        page: () => const HomePage(),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint(page?.name);
    return super.onPageCalled(page);
  }
}
