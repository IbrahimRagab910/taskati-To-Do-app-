import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati/core/constants/app_assets.dart';
import 'package:taskati/core/functions/navigation.dart';
import 'package:taskati/core/services/shared_prefrences.dart';
import 'package:taskati/core/styles/text_styles.dart';
import 'package:taskati/features/home/pages/home_screen.dart';
import 'package:taskati/features/intro/pages/start_screen.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  @override
  void initState() {
    bool isuplouded = SharedPref.getBool(SharedPref.isUploadedKey);
    // SharedPref.init();
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      if (isuplouded) {
        pushReplacment(context, HomeScreen());
      } else {
        pushReplacment(context, StartScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Lottie.asset(AppAssets.logoLotti),
            SizedBox(height: 8),
            Text('Taskati', style: TextStyles.tagLine),
            Text('It’s time to get organized', style: TextStyles.hint),
          ],
        ),
      ),
    );
  }
}
