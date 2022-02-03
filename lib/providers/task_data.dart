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

  List<Task> get completedTasks {
    return _tasks.where((task) => task.isDone).toList();
  }

  List<Task> get incompleteTasks {
    return _tasks.where((task) => task.isDone == false).toList();
  }

  int get taskCount {
    return _tasks.length;
  }

  int get taskCountDone {
    return completedTasks.length;
  }

  int get taskCountNotDone {
    return incompleteTasks.length;
  }

  void addTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
