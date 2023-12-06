import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time_charm/app/config/app_colors.dart';
import 'package:time_charm/app/config/app_fontfamilies.dart';
import 'package:time_charm/presentation/pages/splash/bindings/splash_bindings.dart';
import 'package:time_charm/presentation/routes/routes.dart';
import 'package:time_charm/presentation/routes/routes_string.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AppColors.primary,
            fontFamily: FontFamily.poppinsMedium),
        initialRoute: AppRoutePage.splash,
        getPages: appRoutes(),
        initialBinding: SplashBindings(),
      ),
      builder: (context, child) =>
          NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
              child: child!),
    );
  }
}
