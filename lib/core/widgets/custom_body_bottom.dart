import 'package:flutter/material.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/styles/text_styles.dart';

class CustomBodyBottom extends StatelessWidget {
  const CustomBodyBottom({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyles.textBottom),
    );
  }
}
