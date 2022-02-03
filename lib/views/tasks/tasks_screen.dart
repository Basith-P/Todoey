import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/task_data.dart';
import '../add_task/add_task_screen.dart';
import 'tasks_widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskData>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list_rounded,
                    size: 32,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\t\t\t${taskProvider.taskCountNotDone} tasks due, ${taskProvider.taskCountDone} done',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    '\t\t\t\t\tTo do',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TasksList(isDone: false),
                  const SizedBox(height: 20),
                  const Text(
                    '\t\t\t\t\tCompleted',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TasksList(isDone: true),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_rounded),
        onPressed: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => const AddTaskScreen(),
        ),
      ),
    );
  }
}
