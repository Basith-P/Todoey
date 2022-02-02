import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  TaskItem({
    required this.taskTitle,
    required this.isDone,
    required this.checkBoxCallback,
  });

  final String taskTitle;
  final bool isDone;
  final VoidCallback checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: isDone,
        onChanged: (value) => checkBoxCallback(),
      ),
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
