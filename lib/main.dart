import 'package:flutter/material.dart';
import 'package:taskati/core/constants/app_assets.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/styles/themes.dart';
import 'package:taskati/features/intro/pages/splach_screen.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: AppColors.bgColor,
            ),
            Image.asset(
              AppAssets.background,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            child!,
          ],
        );
      },
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: SplachScreen(),
    );
  }
}
