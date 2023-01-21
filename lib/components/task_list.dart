import 'package:flutter/material.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        TaskItem(
          title: 'Eat a Dinner',
          completed: false,
        ),
        TaskItem(
          title: 'Eat a Dinner Again',
          completed: true,
        ),
      ],
    );
  }
}
