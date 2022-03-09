import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:pomotomo/screens/simple_timer_page.dart';
import 'package:pomotomo/screens/splash_screen.dart';
import 'dart:async';
import 'package:pomotomo/screens/timer_page.dart';
import 'package:pomotomo/screens/stats_page.dart';
import 'package:pomotomo/screens/todo_list_page.dart';
import 'package:pomotomo/screens/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

const appbarColor = const Color(0xFF77DD76);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      // TODO: CHANGE BACK TO HOMEPAGE IF SPLASH IS NOT NEEDED
      home: const splash_screen(),//const MyHomePage(title: 'PomoTomo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // instead of passing in a widget, pass in a class to load more than 1 thing

    //timer_page(),
    simple_timer_page(),
    login_page(),
    todo_list_page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: ElevatedButton(
        //               onPressed:() {
        //
        //               },
        //               child:Text("Start")
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: ElevatedButton(
        //             onPressed:(){
        //
        //             },
        //             child:Text("Cancel")
        //           ),
        //         )
        //       ],
        //     ),
        //
        //   ],
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in_outlined),
            label: 'Tasks',
          ),
        ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ),
    );
  }
}

