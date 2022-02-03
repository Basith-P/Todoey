import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/providers/task_data.dart';

import 'task_item.dart';

class TasksList extends StatelessWidget {
  TasksList({required this.isDone});

  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: isDone ? taskData.taskCountDone : taskData.taskCountNotDone,
        itemBuilder: (context, i) {
          final task = isDone ? taskData.completedTasks[i] : taskData.incompleteTasks[i];
          return TaskItem(
            taskTitle: task.name,
            isDone: task.isDone,
            checkBoxCallback: () => taskData.updateTask(task),
            longPressCallback: () => taskData.deleteTask(task),
          );
        },
        separatorBuilder: (context, i) {
          return const Divider();
        },
      ),
    );
  }
}
