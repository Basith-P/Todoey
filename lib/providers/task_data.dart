import 'package:flutter/foundation.dart';

import '../models/task.dart';

class TaskData with ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Call mom'),
    Task(name: 'Mail boss'),
  ];

  List<Task> get allTasks {
    return [..._tasks];
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }
}
