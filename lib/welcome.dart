import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatefulWidget {
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {


  @override
  Widget build(BuildContext context) {
    void Signin(String routeName){
      setState(() {
        Navigator.popAndPushNamed(context, routeName);
      });
    }
    void Signup(String routeName){
      setState(() {
        Navigator.popAndPushNamed(context, routeName);
      });
    }
    // TODO: implement build
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Positioned.fill(                    // Logo
            top: 50,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo - blue.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(                // Circle
            bottom: -250,
            top: 300,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/circle- blue.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          Positioned.fill(
            // Blue Field
            top: 480,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,

                decoration: BoxDecoration(

                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Color(0xFF0065FF),Color(0xFF0F3D91)]
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),

                    ),
                ),
              ),
            ),
          ),
          Positioned.fill(                 // White in Blue Field
            top: 170,
            left: 110,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350,
                height: 60,
                child:
                Center(
                  child: Row(
                    children: const [
                      Text('Welcome To ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text('MediAid!',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0065FF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(                 // Blue in Blue Field
            bottom: 31,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () => Signin('/otp'),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF0065FF),Color(0xFF0F3D91)]
                    ),
                    border: Border.all(color: Colors.white ),

                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Text('Sign in',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned.fill(                 // White in Blue Field
            top: 400,
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: ()=>Signup('/register'),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Text('Sign up',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F3D91),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  onPressed() {}
}
/*

*/
