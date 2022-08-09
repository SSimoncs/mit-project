import 'package:flutter/material.dart';

class TaskTiles extends StatefulWidget {
  const TaskTiles({Key? key}) : super(key: key);

  @override
  State<TaskTiles> createState() => _TaskTilesState();
}

class _TaskTilesState extends State<TaskTiles> {
  bool? isCheckState = false;

  void callBack(bool? newValue) {
    setState(() {
      isCheckState = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: false,
      title: Text(
        'Buy Milk',
        style: TextStyle(
            decoration:
                isCheckState == true ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        isCheckState: isCheckState,
        onChangeCheckState: (bool? newValue) => setState(() {isCheckState = newValue;})
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? isCheckState;

  final Function(bool?) onChangeCheckState;

  TaskCheckBox({this.isCheckState, required this.onChangeCheckState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal,
      value: isCheckState,
      onChanged: onChangeCheckState,
    );
  }
}
