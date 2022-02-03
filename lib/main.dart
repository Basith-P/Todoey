import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/config/theme/custome_theme.dart';
import '/providers/task_data.dart';
import 'views/tasks/tasks_screen.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: const TasksScreen(),
        theme: CustomTheme.lightTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
