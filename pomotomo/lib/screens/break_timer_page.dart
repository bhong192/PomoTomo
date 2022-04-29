import 'package:flutter/material.dart';
import 'package:simple_timer/simple_timer.dart';

class break_timer_page extends StatefulWidget {
  const break_timer_page({Key? key}) : super(key: key);

  @override
  State<break_timer_page> createState() => _break_timer_pageState();
}

const timerColor = Color(0xFFF16868);
class _break_timer_pageState extends State<break_timer_page> with SingleTickerProviderStateMixin {

  //TimerController? _timerController;
  final TimerStyle _timerStyle = TimerStyle.ring;
  final TimerProgressIndicatorDirection _progressIndicatorDirection = TimerProgressIndicatorDirection.clockwise;
  final TimerProgressTextCountDirection _progressTextCountDirection = TimerProgressTextCountDirection.count_down;


  Duration _workDuruation = const Duration(minutes: 5);

  void exit(){
    Navigator.pop(context, true);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(35),
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: SimpleTimer(
                    duration: _workDuruation,
                    //controller: _timerController,
                    status: TimerStatus.start,
                    timerStyle: TimerStyle.ring,
                    progressIndicatorColor: timerColor,
                    backgroundColor: Colors.blueGrey,
                    progressIndicatorDirection: TimerProgressIndicatorDirection.clockwise,
                    progressTextCountDirection: TimerProgressTextCountDirection.count_down,
                    progressTextStyle: const TextStyle(fontSize: 65),
                    strokeWidth: 10,
                    onEnd: exit
                ),
              ),
              const Text(
                "Take a break!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)
              ),
            ],
          )
        )
    );


  }
}
