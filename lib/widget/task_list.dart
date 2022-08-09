import 'package:to_doey/widget/task_tile.dart';
import 'package:flutter/material.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTiles(),
        TaskTiles(),
        TaskTiles(),
      ],
    );
  }
}