import 'package:flutter/material.dart';
import 'package:simple_timer/simple_timer.dart';

class simple_timer_page extends StatefulWidget {
  const simple_timer_page({Key? key}) : super(key: key);

  @override
  _simple_timer_pageState createState() => _simple_timer_pageState();

}
const timerColor = Color(0xFFF16868);

class _simple_timer_pageState extends State<simple_timer_page> with SingleTickerProviderStateMixin {

  // Simple Timer variables
  late TimerController _timerController;
  TimerStyle _timerStyle = TimerStyle.ring;
  TimerProgressIndicatorDirection _progressIndicatorDirection = TimerProgressIndicatorDirection.clockwise;
  TimerProgressTextCountDirection _progressTextCountDirection = TimerProgressTextCountDirection.count_down;

  @override
  void initState(){
    _timerController = TimerController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: SimpleTimer(
                  duration: const Duration(minutes: 25),
                  controller: _timerController,
                  timerStyle: TimerStyle.ring,
                  progressIndicatorColor: timerColor,
                  backgroundColor: Colors.blueGrey,
                  progressIndicatorDirection: TimerProgressIndicatorDirection.clockwise,
                  progressTextCountDirection: TimerProgressTextCountDirection.count_down,
                  strokeWidth: 10,
                ),
              ),
            ),
            Column(
              children:<Widget>[
                const Text("Ready to be productive?", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: _timerController.start,
                        child: const Text("Start"),

                    ),
                    ElevatedButton(
                      onPressed: _timerController.restart,
                      child: const Text("Restart"),

                    ),
                    ElevatedButton(
                      onPressed: _timerController.pause,
                      child: const Text("Pause"),

                    )
                  ],

                ),
                //Row of Buttons

              ],
            ),
          ],
        ),
      ),
    );
  }

}
