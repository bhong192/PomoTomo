import 'package:flutter/material.dart';
import 'package:pomotomo/screens/break_timer_page.dart';
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
  late TimerController _timerController2;
  final TimerStyle _timerStyle = TimerStyle.ring;
  final TimerProgressIndicatorDirection _progressIndicatorDirection = TimerProgressIndicatorDirection.clockwise;
  final TimerProgressTextCountDirection _progressTextCountDirection = TimerProgressTextCountDirection.count_down;

  Duration _workDuruation = const Duration(seconds: 2);
  Duration _breakDuruation = const Duration(minutes: 5);

  @override
  void initState(){
    _timerController = TimerController(this);
    super.initState();
  }

  void restartTimer(){
    _timerController.reset();
    _timerController.pause();
  }

  void startbreakTimer(){
    setState(() {
      _workDuruation = _breakDuruation;
      //const Duration(minutes: 5);
    });
    print(_workDuruation);
  }

  void setBreakTimer(){
    _timerController.add(const Duration(minutes:5));
    // setState(() {
    //   _timerController.add(const Duration(minutes:5));
    // });
  }

  void bye(){
    Navigator.push(context, MaterialPageRoute(builder:(context) => const break_timer_page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
              Container(
                padding: const EdgeInsets.all(35),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: SimpleTimer(
                  duration: _workDuruation,
                  controller: _timerController,
                  timerStyle: TimerStyle.ring,
                  progressIndicatorColor: timerColor,
                  backgroundColor: Colors.blueGrey,
                  progressIndicatorDirection: TimerProgressIndicatorDirection.clockwise,
                  progressTextCountDirection: TimerProgressTextCountDirection.count_down,
                  progressTextStyle: const TextStyle(fontSize: 65),
                  strokeWidth: 10,
                  onEnd: bye
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
                        onPressed: () => _timerController.pause(),
                        child: const Text("Pause"),
                    ),

                    ElevatedButton(
                      onPressed: restartTimer,
                      child: const Text("Restart"),

                    ),

                    ElevatedButton(
                        onPressed: ()=> {
                          setState(() {
                            _timerController.add(const Duration(seconds:5));
                          })
                        },
                        child: const Text("Add Time")
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: (){},
                        child: const Text("Start Break")
                    )
                  ]

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
