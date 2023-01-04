import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.text, required this.isChecked, required this.checkBoxCallBack, required this.deleteTaskCallBack});

  final String text;
  bool isChecked ;
  final Function(bool? value) checkBoxCallBack;
  final Function() deleteTaskCallBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: deleteTaskCallBack,
    );
  }
}


