import 'package:flutter/material.dart';
class  todo_list_page extends StatefulWidget {
  const todo_list_page({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<todo_list_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[

            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              onPressed: (){

              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),

    );
  }
}
