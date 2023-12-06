import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_charm/app/config/app_colors.dart';
import 'package:time_charm/app/config/app_fontfamilies.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///
class AppTextStyles {
  static TextStyle base = TextStyle(
      fontFamily: FontFamily.poppinsSemiBold,
      fontSize: 10.sp,
      color: AppColors.black,
      overflow: TextOverflow.ellipsis);

  /// title
  static TextStyle appTitle = base.copyWith(
    fontSize: 30.sp,
    fontFamily: FontFamily.poppinsBold,
    color: AppColors.white,
  );
  static TextStyle appTitle30Black = appTitle.copyWith(
    color: AppColors.black,
  );
  static TextStyle appTitle40White = appTitle.copyWith(
    fontSize: 40.sp,
  );

  //semi

  static TextStyle semi12Black = base.copyWith(
    fontSize: 12.sp,
  );
  static TextStyle semi14Black = base.copyWith(
    fontSize: 14.sp,
  );
  static TextStyle semi14White = semi14Black.copyWith(
    color: AppColors.white,
  );
  static TextStyle semi16White = semi14White.copyWith(
    fontSize: 16.sp,
  );
  static TextStyle semi16Black = base.copyWith(
    fontSize: 16.sp,
  );
  static TextStyle semi21Black = base.copyWith(
    fontSize: 21.sp,
  );
  static TextStyle semi32Black = base.copyWith(
    fontSize: 32.sp,
  );

  //medium
  static TextStyle medium10grey = base.copyWith(
    fontFamily: FontFamily.poppinsMedium,
    color: AppColors.grey87,
    fontSize: 10.sp,
  );
  static TextStyle medium12grey = base.copyWith(
    fontFamily: FontFamily.poppinsMedium,
    color: AppColors.grey87,
    fontSize: 12.sp,
  );
  static TextStyle medium14grey = base.copyWith(
    fontFamily: FontFamily.poppinsMedium,
    color: AppColors.greyCB,
    fontSize: 14.sp,
  );
  static TextStyle medium16White = base.copyWith(
    fontFamily: FontFamily.poppinsMedium,
    color: AppColors.white,
    fontSize: 16.sp,
  );
  //bold
  static TextStyle bold12Black = base.copyWith(
    fontFamily: FontFamily.poppinsBold,
    color: AppColors.black,
    fontSize: 14.sp,
  );
  static TextStyle bold16Black = base.copyWith(
    fontFamily: FontFamily.poppinsBold,
    color: AppColors.black,
    fontSize: 16.sp,
  );
  static TextStyle bold21Black = base.copyWith(
    fontFamily: FontFamily.poppinsBold,
    color: AppColors.black,
    fontSize: 21.sp,
  );
  static TextStyle bold24grey = base.copyWith(
    fontFamily: FontFamily.poppinsBold,
    color: AppColors.grey75,
    fontSize: 24.sp,
  );
  //regular
  static TextStyle regular10White = base.copyWith(
    fontFamily: FontFamily.poppinsRegular,
    color: AppColors.white,
  );
  static TextStyle regular12grey = regular10White.copyWith(
    fontSize: 12.sp,
    color: AppColors.grey87,
  );
  static TextStyle regular12lightGrey = regular12grey.copyWith(
    color: AppColors.textFeild,
  );
  static TextStyle regular14Black = regular12grey.copyWith(
    fontSize: 14.sp,
    color: AppColors.black,
  );
  static TextStyle regular16Black = regular12grey.copyWith(
    fontSize: 16.sp,
    color: AppColors.black,
  );
  static TextStyle regular16Black08 = regular12grey.copyWith(
    fontSize: 16.sp,
    color: AppColors.black.withOpacity(0.8),
  );

  static TextStyle regular32Black = regular16Black08.copyWith(
    fontSize: 32.sp,
    color: AppColors.black,
  );
}
