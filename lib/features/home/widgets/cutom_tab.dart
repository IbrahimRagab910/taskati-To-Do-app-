import 'package:flutter/material.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/styles/text_styles.dart';

class CutomTab extends StatelessWidget {
  const CutomTab({super.key, required this.text, required this.isSelected});
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? AppColors.primaryColor : AppColors.accentColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.bodyTitle.copyWith(
              color: isSelected ? AppColors.bgColor : AppColors.primaryColor,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
