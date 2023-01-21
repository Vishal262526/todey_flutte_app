import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.title, required this.completed});
  final String title;
  final bool completed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title),
      trailing: Checkbox(
        value: completed,
        onChanged: null,
      ),
    );
  }
}
