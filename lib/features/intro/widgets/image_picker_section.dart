import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati/core/constants/app_assets.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/widgets/custom_body_bottom.dart';

class ImagePickerSection extends StatefulWidget {
  const ImagePickerSection({super.key});

  @override
  State<ImagePickerSection> createState() => _ImagePickerSectionState();
}

class _ImagePickerSectionState extends State<ImagePickerSection> {
  String? path;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              CircleAvatar(
                radius: 82,
                backgroundImage: path != null
                    ? FileImage(File(path!))
                    : AssetImage(AppAssets.placeHolder),
              ),
              if (path != null)
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        path = null;
                      });
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage(AppAssets.delete),
                      radius: 18,
                      backgroundColor: AppColors.bgColor,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 34),
        Row(
          mainAxisAlignment: .center,
          children: [
            CustomBodyBottom(
              text: 'From Camera',
              onPressed: () async {
                var image = await ImagePicker().pickImage(
                  source: ImageSource.camera,
                );
                if (image != null) {
                  setState(() {
                    path = image.path;
                  });
                }
              },
            ),
            SizedBox(width: 12),
            CustomBodyBottom(
              text: 'From Gallery',
              onPressed: () {
                ImagePicker().pickImage(source: ImageSource.gallery).then((
                  image,
                ) {
                  if (image != null) {
                    setState(() {
                      path = image.path;
                    });
                  }
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
