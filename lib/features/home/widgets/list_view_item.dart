import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:taskati/core/constants/app_assets.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/styles/text_styles.dart';
import 'package:taskati/core/widgets/custom_svg_picture.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 331,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 7,
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'title of task',
              style: TextStyles.bodyTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Text(
              'description description description description description description',
              style: TextStyles.bodyTitle.copyWith(
                fontSize: 12,
                color: Color(0xff6E6A7C),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Gap(8),
            Row(
              children: [
                CustomSvgPicture(path: AppAssets.timerSvg),
                Gap(5),
                Text(
                  '10:00 AM - 12:00 AM',
                  style: TextStyles.takTime.copyWith(
                    color: Color(0xffAB94FF),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    'done',
                    style: TextStyles.takTime.copyWith(
                      fontSize: 9,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
