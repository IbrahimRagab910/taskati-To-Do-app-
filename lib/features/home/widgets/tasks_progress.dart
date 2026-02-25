import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/styles/text_styles.dart';

class TasksProgress extends StatelessWidget {
  const TasksProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primaryColor,
      ),
    
      child: Row(
        crossAxisAlignment: .center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 22,
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    DateFormat("EEE, d,MMM").format(DateTime.now()),
                    style: TextStyles.takTime.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(13),
                  Text(
                    'Your today’s task almostalmost',
                    style: TextStyles.bodyTitle.copyWith(
                      color: AppColors.bgColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: CircularPercentIndicator(
              radius: 38.0,
              lineWidth: 5.0,
              startAngle: 135,
              backgroundColor: AppColors.primaryLightColor,
              percent: 0.7,
              animation: true,
              progressColor: AppColors.bgColor,
              center: Text(
                "70%",
                style: TextStyles.bodyTitle.copyWith(
                  color: AppColors.bgColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
