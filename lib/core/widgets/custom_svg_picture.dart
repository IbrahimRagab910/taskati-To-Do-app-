import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture(String deleteSvg, {
    super.key,
    this.height,
    this.width,
    required this.path,
    required this.color,
  });
  final double? height;
  final double? width;
  final String path;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
