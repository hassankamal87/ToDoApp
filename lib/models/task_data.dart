import 'package:flutter/foundation.dart';
import 'package:to_do_app/models/task.dart';
import 'dart:collection';


class TaskData with ChangeNotifier{


  final List<Task> _tasks = [
    Task(title: 'buy milk'),
    Task(title: 'buy eggs'),
    Task(title: 'buy drugs'),
  ];


  UnmodifiableListView<Task> get getTasksList{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTask){
    _tasks.insert(0,
      Task(title: newTask)
    );
    notifyListeners();
  }

  void checkToggle(int index){
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}