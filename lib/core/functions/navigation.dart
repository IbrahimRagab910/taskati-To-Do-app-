import 'package:flutter/material.dart';

void pushReplacment(BuildContext context, Widget nextScreen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) {
        return nextScreen;
      },
    ),
  );
}

void pushTo(BuildContext context, Widget nextScreen) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return nextScreen;
      },
    ),
  );
}

void pop(BuildContext context, Widget nextScreen) {
  Navigator.pop(context);
}
