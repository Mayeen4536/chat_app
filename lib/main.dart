import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/reg_screen.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black54))),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        Registration.id: (context) => Registration(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
