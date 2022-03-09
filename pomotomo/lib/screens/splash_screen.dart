import 'package:flutter/material.dart';
import 'package:pomotomo/screens/login_page.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();



}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState(){
    super.initState();
    _navigateToLogin();
  }
  
  void _navigateToLogin() async{
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const login_page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Welcome to PomoTomo!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,),),
        ),
      ),
    );
  }
}
