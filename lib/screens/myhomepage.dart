import 'dart:async';

import 'package:firstapp/screens/dashboard.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Dashboard()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.white60,
        child:Image(image: AssetImage("assets/image/smalllogo2.png"),)
    );
  }
}
