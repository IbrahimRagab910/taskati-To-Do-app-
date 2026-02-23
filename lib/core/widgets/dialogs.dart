import 'package:flutter/material.dart';

void showSnakeBar({ required BuildContext context, required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
