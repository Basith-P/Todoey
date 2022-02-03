import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    required this.taskTitle,
    required this.isDone,
    required this.checkBoxCallback,
    required this.longPressCallback,
  });

  final String taskTitle;
  final bool isDone;
  final VoidCallback checkBoxCallback;
  final VoidCallback longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      leading: Checkbox(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
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
