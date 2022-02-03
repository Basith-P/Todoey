import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/providers/task_data.dart';

import 'task_item.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: taskData.taskCount,
        itemBuilder: (context, i) {
          final task = taskData.allTasks[i];
          return TaskItem(
            taskTitle: task.name,
            isDone: task.isDone,
            checkBoxCallback: () {
              setState(() {
                task.toggleDone();
              });
            },
          );
        },
        separatorBuilder: (context, i) {
          return const Divider();
        },
      ),
    );
  }
}
