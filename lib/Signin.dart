import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Widget build(BuildContext context) {

    void Reg_2(String routeName) {
      setState(() {
        Navigator.popAndPushNamed(context, routeName);
      });
    }
    void Back(String routeName){
      setState(() {
        Navigator.popAndPushNamed(context, routeName);
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Color(0xFF0065FF),Color(0xFF0F3D91)]
                ),
              ),
            ),
          ),
          Positioned.fill(                    // Logo
            top: 55,
            left: 25,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 30,
                height: 30,
                child: Center(
                  child: GestureDetector(
                    onTap: () => Back('/'),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/previous-32px.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(                    // Logo
            top: 55,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Logo - white.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(                // Circle
            top: 200,
            right: 110,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/circle- white.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            // Blue Field
            top: 255,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),

                    )
                ),
              ),
            ),
          ),
          Positioned.fill(                 // White in Blue Field
            bottom: 40,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350,
                height: 60,
                child:
                Center(
                  child: Column(
                    children: const [
                      Text('Sign In',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      Text('Complete your sign up details',
                        style: TextStyle(
                          fontSize: 15.0,
                          //fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(                 // White in Blue Field
            top: 120,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  width:  350,
                  height: 70,
                  child: Center(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),

                              ),
                              hintText: 'National ID',
                              prefixIcon: Icon(Icons.web_rounded)
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
          ),
          Positioned.fill(                 // White in Blue Field
            top: 275 ,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  width:  350,
                  height: 70,
                  child: Center(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),

                              ),
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock_outline_rounded)
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
          ),
          Positioned.fill(                 // Blue in Blue Field
            bottom: 130,
            right: -85,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 350,
                height: 50,
                child: Center(
                  child: GestureDetector(
                    onTap: () => Reg_2('/register_2'),
                    child: Text('Forgot Password?',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE33166),
                          decoration: TextDecoration.underline,
                          decorationThickness: 2
                      ),
                    ),
                  ),
                ),

              ),
            ),
          ),

          Positioned.fill(                 // Blue in Blue Field
            bottom: 78,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () => Reg_2('/register_2'),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF0065FF),Color(0xFF0F3D91)]
                    ),
                    border: Border.all(color: Colors.white),

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
            top: 170,
            left: 110,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 350,
                height: 60,
                child:
                Center(
                  child: Row(
                    children:  [
                      Text("Don't have an account? ",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Reg_2('/register_2'),
                        child: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE33166),
                          ),
                      ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    onPressed() {}
  }
}
