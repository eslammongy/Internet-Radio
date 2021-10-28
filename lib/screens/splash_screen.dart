import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_radio_app/screens/home_screen.dart';
import 'package:internet_radio_app/util/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomeScreen()
            )
        )
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(
              "assets/images/radio.png",
              width: 100,
              height: 100,
            ),
            SizedBox(height: 10,),
            Text("Streaming Radio" , style: TextStyle(fontFamily: "Pacifico" , fontSize: 30 ,color: primaryDarkColor),)
          ],)
          
        ),
      ),
    );
  }
}
