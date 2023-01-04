import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          return TaskTile(
            text: context.watch<TaskData>().getTasksList[index].title,
            isChecked: context.watch<TaskData>().getTasksList[index].isDone,
            checkBoxCallBack: (bool? value){
              context.read<TaskData>().checkToggle(index);
            },
            deleteTaskCallBack: (){
              context.read<TaskData>().deleteTask(index);
            },
          );
        },
      itemCount: context.watch<TaskData>().taskCount,
    );
  }
}