import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
                width: 70,
                height: 70,
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
            top: 160,
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
            top: 215,
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
          Positioned.fill(                    // Logo
            bottom: 100,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/OTP.png'),
                    fit: BoxFit.cover,
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
                width: 350,
                height: 60,
                child:
                Center(
                  child: Column(
                    children: const [
                      Text('OTP Verification',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F3D91),
                        ),
                      ),
                      Text('We sent you a code to +***********',
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
            top: 275 ,
            left: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width:  60,
                  height: 60,
                  child: Center(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),

                              ),
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
            right: 75,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  width:  60,
                  height: 60,
                  child: Center(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),

                              ),
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
            left: 75,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  width:  60,
                  height: 60,
                  child: Center(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),

                              ),
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
            right: 60,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                  width:  60,
                  height: 60,
                  child: Center(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),

                              ),
                          ),
                        ),
                      ],
                    ),
                  )
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
            bottom: 15,

            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 350,
                height: 60,
                child:
                Center(
                  child:
                      GestureDetector(
                        onTap: () => Reg_2('/register_2'),
                        child: Text('Resend OTP code',
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
        ],
      ),
    );
    onPressed() {}
  }
}
