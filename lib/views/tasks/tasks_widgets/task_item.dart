import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
      title: Text('Task'),
    );
  }
}
