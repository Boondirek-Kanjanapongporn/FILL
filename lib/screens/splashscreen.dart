import 'dart:async';

import 'package:fill/constants/color_constant.dart';
import 'package:fill/constants/style_constant.dart';
import 'package:fill/screens/welcomescreen/Homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                child: Container(
                  child: Image.asset(
                    "assets/images/fill-animation.gif",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Text(
                          "Sponsored by: ",
                          style: mSubtitleStyle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Image.asset("assets/images/aws.png", scale: 50),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
