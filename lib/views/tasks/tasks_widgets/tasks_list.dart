import 'package:flutter/material.dart';

import 'task_item.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, i) {
        return TaskItem();
      },
      separatorBuilder: (context, i) {
        return const Divider();
      },
    );
  }
}
