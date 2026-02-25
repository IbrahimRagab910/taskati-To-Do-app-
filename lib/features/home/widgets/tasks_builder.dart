import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:taskati/features/home/widgets/cutom_tab.dart';
import 'package:taskati/features/home/widgets/tasks_list_view.dart';

class TasksBuilder extends StatefulWidget {
  const TasksBuilder({super.key});

  @override
  State<TasksBuilder> createState() => _TasksBuilderState();
}

class _TasksBuilderState extends State<TasksBuilder> {
  int _selectedIndex = 0;
  bool isSelected(int index) => _selectedIndex == index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelPadding: EdgeInsets.symmetric(horizontal: 5),

            indicatorWeight: 0,
            // indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(),
            tabs: [
              CutomTab(isSelected: isSelected(0), text: 'All'),
              CutomTab(isSelected: isSelected(1), text: 'In progress'),
              CutomTab(isSelected: isSelected(2), text: 'Complete'),
            ],
          ),
          Gap(10),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),

              children: [TasksListView(), TasksListView(), TasksListView()],
            ),
          ),
        ],
      ),
    );
  }
}
