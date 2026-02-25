import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:taskati/core/styles/app_colors.dart';

class DateTaskPicker extends StatefulWidget {
  const DateTaskPicker({super.key});

  @override
  State<DateTaskPicker> createState() => _DateTaskPickerState();
}

class _DateTaskPickerState extends State<DateTaskPicker> {
  final DatePickerController _controller = DatePickerController();
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      _controller.animateToSelection(duration: Duration(milliseconds: 500));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now().subtract(Duration(days: 9)),
      controller: DatePickerController(),

      initialSelectedDate: DateTime.now(),

      selectionColor: AppColors.primaryColor,
      selectedTextColor: Colors.white,
      height: 90,
      width: 64,
    );
  }
}
