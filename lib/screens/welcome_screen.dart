import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/reg_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Icon(
                Icons.chat,
                size: 70,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Chat_App',
              style: TextStyle(
                fontSize: 40,
              ),
            )),
            SizedBox(
              height: 30,
            ),
            Material(
              elevation: 5.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                minWidth: 100,
                height: 40,
                child: Text('Login', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              elevation: 5.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, Registration.id);
                },
                minWidth: 100,
                height: 40,
                child: Text('Register', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
