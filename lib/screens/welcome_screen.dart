import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/reg_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceOut);
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                child: Icon(
                  Icons.chat,
                  size: animation.value * 80,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Chat_App',
              // '${controller.value.toInt()}',
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
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
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
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
