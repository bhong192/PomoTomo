import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pomotomo/main.dart';
import 'package:pomotomo/screens/simple_timer_page.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {

  // text fields for email and password
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 200),
            const Text("Log In or Sign Up!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            const SizedBox(height: 15),

            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              child: TextField(
                controller: usernameController,
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),

            const SizedBox(height: 20), // just for separating the text fields


            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                )
              ),
            ),

            const SizedBox(height: 20),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      //TODO LOGIN LOGIC
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: usernameController.text,
                          password: passwordController.text)
                          .then((value){
                            print("User Signed in");
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "PomoTomo")));
                      }).catchError((error){
                        print("User failed to sign in");
                      });
                    },
                    child: const Text("Login")
                ),
                ElevatedButton(
                    onPressed: (){
                      //TODO Sign Up LOGIC
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: usernameController.text, password: passwordController.text)
                      .then((value){
                        print("Succesfully signed up the user!");
                      }).catchError((error){
                        print("Failed to sign up the user");
                        print(error.toString());
                      });
                    },
                    child: const Text("Sign Up")
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
