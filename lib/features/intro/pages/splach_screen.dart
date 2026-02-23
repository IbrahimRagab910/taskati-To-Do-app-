import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati/core/constants/app_assets.dart';
import 'package:taskati/core/styles/text_styles.dart';
import 'package:taskati/features/intro/pages/start_screen.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return StartScreen();
          },
        ),
      );
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
