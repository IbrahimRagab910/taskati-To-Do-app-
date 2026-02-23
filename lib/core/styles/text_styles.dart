import 'package:flutter/material.dart';
import 'package:taskati/core/constants/app_fonts.dart';
import 'package:taskati/core/styles/app_colors.dart';

class TextStyles {
  static TextStyle title = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle? appBarTitle = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle content = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.grayColor,
  );
  static TextStyle desciption = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
  );
  static TextStyle bodyTitle = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
  );
  static TextStyle tagLine = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle hint = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.grayColor,
  );
  static TextStyle takTime = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.accentColor,
  );
  static TextStyle textBottom = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );
  static TextStyle textMBottom = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: AppColors.bgColor,
  );
}
