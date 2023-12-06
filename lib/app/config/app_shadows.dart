import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_charm/app/config/app_colors.dart';

class AppShadows {
  static final shadow = BoxShadow(
      blurRadius: 4.r,
      spreadRadius: 4.r,
      offset: Offset(2.r, 2.r),
      color: AppColors.greyEB.withOpacity(0.2));
}
