import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/styles/text_styles.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyles.appBarTitle,
      centerTitle: true,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.bgColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
