import 'package:flutter/material.dart';
class  todo_list_page extends StatefulWidget {
  const todo_list_page({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<todo_list_page> {

  List<String> tasks = [
    "Task 1",
    "Task 2",
    "Task 3"
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(title: Text("Task 1")),
          ListTile(title: Text("Task 2")),
          ListTile(title: Text("Task 3")),

        ],
      )


      );
  }
}
