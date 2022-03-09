import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 200),
            const Text("Log In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            const SizedBox(height: 5),

            TextField(
              controller: usernameController,
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),

            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              )
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      //TODO LOGIN LOGIC
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
                    child: const Text("Sign up")
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
