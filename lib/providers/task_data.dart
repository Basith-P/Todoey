import 'package:flutter/foundation.dart';

import '../models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Call mom'),
    Task(name: 'Mail boss'),
  ];

  List<Task> get allTasks {
    return [...tasks];
  }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskTitle) {
    tasks.add(Task(name: taskTitle));
    notifyListeners();
  }
}
