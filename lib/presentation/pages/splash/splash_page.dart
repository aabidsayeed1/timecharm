import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:time_charm/app/config/app_colors.dart';
import 'package:time_charm/app/config/app_constants.dart';
import 'package:time_charm/app/config/app_text_styles.dart';
import 'package:time_charm/presentation/pages/splash/controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey3A,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(AppStrings.title,
                style: AppTextStyles.appTitle.copyWith(fontSize: 52.sp)),
            Gap(100.h),
            CircularProgressIndicator(
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
