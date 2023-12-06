import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time_charm/app/config/app_colors.dart';
import 'package:time_charm/app/config/app_constants.dart';
import 'package:time_charm/app/config/app_text_styles.dart';
import 'package:time_charm/presentation/pages/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,
      appBar: AppBar(
        title: Text(AppStrings.title,
            style: AppTextStyles.appTitle.copyWith(color: AppColors.black)),
        centerTitle: true,
        elevation: 6,
        shadowColor: AppColors.greyCB.withOpacity(0.7),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Obx(
                () => Container(
                  margin: EdgeInsets.all(16.r),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: controller.isMatched.value
                        ? AppColors.green3C
                        : Colors.yellow.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(24.r),
                    border: Border.all(color: AppColors.grey75),
                  ),
                  child: Text(
                      controller.isMatched.value
                          ? 'Success  (${controller.noOfSuccesCount.value})'
                          : 'Please Try Again',
                      style: AppTextStyles.appTitle30Black),
                ),
              )),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: MaterialButton(
                      color: AppColors.red.withOpacity(0.3),
                      padding: EdgeInsets.zero,
                      onPressed: () => controller.onRandomTap(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.r)),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.red.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(24.r),
                          border: Border.all(color: AppColors.grey75),
                        ),
                        child:
                            Text('Tap', style: AppTextStyles.appTitle30Black),
                      )),
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16.r),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(24.r),
                    border: Border.all(color: AppColors.grey75),
                  ),
                  child: CircleAvatar(
                    backgroundColor: AppColors.grey87,
                    radius: 50.r,
                    child: Obx(
                      () => Text(controller.randomNumber.value.toString(),
                          style: AppTextStyles.appTitle40White),
                    ),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
