import 'package:flutter/material.dart';

import '../../../models/task.dart';
import 'task_item.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Call mom'),
    Task(name: 'Mail letter'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: tasks.length,
      itemBuilder: (context, i) {
        return TaskItem(
          taskTitle: tasks[i].name,
          isDone: tasks[i].isDone,
          checkBoxCallback: () {
            setState(() {
              tasks[i].toggleDone();
            });
          },
        );
      },
      separatorBuilder: (context, i) {
        return const Divider();
      },
    );
  }
}
