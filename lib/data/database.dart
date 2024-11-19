import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  //first time opening the app
  void createInitialData(){
    toDoList = [
      ['Make tutorial',false],
      ['Do Exercise',false],
    ];
  }

  //load the data from database
  void loadData(){
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDatabase(){
    _myBox.put('TODOLIST', toDoList);
  }
}