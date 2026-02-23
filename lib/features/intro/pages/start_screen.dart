import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati/core/constants/app_assets.dart';
import 'package:taskati/core/styles/app_colors.dart';
import 'package:taskati/core/styles/text_styles.dart';
import 'package:taskati/core/widgets/custom_body_bottom.dart';
import 'package:taskati/core/widgets/custom_input_section.dart';
import 'package:taskati/core/widgets/dialogs.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  String? path;
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complete Your Profile')),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 66),
            Row(
              mainAxisAlignment: .start,
              children: [Text('Profile Image', style: TextStyles.hint)],
            ),
            SizedBox(height: 21),
            Column(
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
                        ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then((image) {
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
            ),
            SizedBox(height: 45),
            CustomInputSection(
              hintText: 'Your Name',
              controller: nameController,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(22, 32, 22, 32),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(331, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          onPressed: () {
            if (nameController.text.isNotEmpty && path != null) {
              // navigate to next screen
            } else if (nameController.text.isEmpty && path != null) {
              showSnakeBar(context: context, content: 'please enter your name');
            } else if (nameController.text.isNotEmpty && path == null) {
              showSnakeBar(
                context: context,
                content: 'please upload your photo',
              );
            } else {
              showSnakeBar(
                context: context,
                content: 'please enter your name and upload your photo',
              );
            }
          },
          child: Text('Let’s Start !', style: TextStyles.textMBottom),
        ),
      ),
    );
  }
}
