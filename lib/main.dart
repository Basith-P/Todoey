import 'package:flutter/material.dart';

import 'package:todoey/config/theme/custome_theme.dart';
import 'package:todoey/views/tasks/tasks_screen.dart';

void main() => runApp(Todoey());

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TasksScreen(),
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
