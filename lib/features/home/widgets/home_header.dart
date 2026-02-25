import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:taskati/core/services/shared_prefrences.dart';
import 'package:taskati/core/styles/text_styles.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  String name = '';
  String path = '';
  @override
  initState() {
    super.initState();
    getUserDate();
  }

  Future<void> getUserDate() async {
    name = SharedPref.getString(SharedPref.nameKey);
    path = SharedPref.getString(SharedPref.pathKey);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.file(
            File(path),
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        Gap(12),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text('Hello!', style: TextStyles.bodyTitle),
            Text(name, style: TextStyles.appBarTitle),
          ],
        ),
      ],
    );
  }
}
