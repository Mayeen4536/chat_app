import 'package:flutter/material.dart';

import 'login_screen.dart';

// ignore: camel_case_types
class Registration extends StatefulWidget {
  static const id = 'reg_screen';
  const Registration({ Key? key }) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> with SingleTickerProviderStateMixin {
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
      backgroundColor: Colors.blueAccent,

      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          
          padding: EdgeInsets.only(top: 80),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  
                  child: Icon(
                    Icons.chat,
                    size: animation.value * 120,
                  ),
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
              
              SizedBox(
                height: 30,
              ),
               Material(
                elevation: 5.0,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                textStyle: TextStyle(color: Colors.black87),
                child: TextField(
                  onChanged: (value) {
          
                  },
                  decoration: InputDecoration(hintText: 'Enter your mail',
                  hintStyle: TextStyle(color: Colors.black45), 
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                )
              ),
               SizedBox(
                height: 30,
              ),
              Material(
                elevation: 5.0,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                textStyle: TextStyle(color: Colors.black87),
                child: TextField(
                  onChanged: (value) {
          
                  },
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Enter password',
                  hintStyle: TextStyle(color: Colors.black45), 
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                )
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
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 100,
                  height: 40,
                  child: Text('Register', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}