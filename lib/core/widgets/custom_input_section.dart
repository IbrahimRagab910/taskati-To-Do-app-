import 'package:flutter/material.dart';
import 'package:taskati/core/styles/text_styles.dart';

class CustomInputSection extends StatelessWidget {
  const CustomInputSection({super.key, required this.hintText,  this.controller});
  final String hintText;
  final TextEditingController? controller ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(hintText, style: TextStyles.hint),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 30,

                color: Color(0xff000000).withValues(alpha: 0.4),
              ),
            ],
          ),
          child: TextFormField(
            controller: controller,
          ),
        ),
      ],
    );
  }
}
