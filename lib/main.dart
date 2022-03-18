import 'package:flutter/material.dart';
import 'package:mediaid/Registeration.dart';
import 'package:mediaid/welcome.dart';
import 'package:mediaid/Registeration_2.dart';
import 'Otp.dart';
import 'Signin.dart';

void main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>Welcome(),
        '/signin':(context)=>Signin(),
        '/register':(context)=>Registeration(),
        '/register_2' :(context)=>Registeration_2(),
        '/otp' : (context)=>Otp(),
      },
      title: 'MediAid',
    );
  }

}

