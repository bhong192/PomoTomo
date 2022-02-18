import 'package:flutter/material.dart';
class timer_page extends StatefulWidget {
  const timer_page({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}
const timerColor = const Color(0xFFF16868);
// 77DD76

class _State extends State<timer_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             SizedBox(
               height: 300.0,
               child: Stack(
                 children: <Widget>[
                   Center(
                     child: Container(
                       width: 300,
                       height: 300,
                       child: const CircularProgressIndicator(
                         valueColor: AlwaysStoppedAnimation<Color>(timerColor),
                         strokeWidth: 5,
                         value: 1.0,

                       ),
                     ),
                   ),
                   const Center(
                       child: Text("25:00", style: TextStyle(fontSize: 35))
                   ),



                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(35.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: ElevatedButton(
                       onPressed: (){

                       },
                       child: const Text("Start"),

                     ),
                   ),

                   ElevatedButton(
                     onPressed: (){

                     },
                     child: const Text("Give Up"),
                   ),
                 ],
               ),
             ),
           ],
         ),
        ),
    );
  }
}
