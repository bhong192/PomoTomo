import 'package:flutter/material.dart';

class stats_page extends StatefulWidget {
  const stats_page({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<stats_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              children: const <Widget>[
                SizedBox(height: 300),

                //TODO: add graph

                Text("You've been studying for 25 minutes!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ]

          ),



      ),
    );
  }
}
