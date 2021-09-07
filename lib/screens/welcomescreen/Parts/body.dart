import 'package:fill/constants/color_constant.dart';
import 'package:fill/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:fill/code_parts/Rounded_Buttons.dart';
import 'package:fill/screens/LoginPage/login_screen.dart';
import 'package:fill/screens/signupscreen/Signup_Screen.dart';
import 'package:fill/screens/welcomescreen/Parts/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 35),
          child: Image.asset('assets/images/Fill_Icon_Red_Space_with_F.png',
              scale: 2.5, alignment: Alignment.topCenter),
        ),
        SizedBox(
          height: size.height * 0.019,
        ),
        Text(
          "WELCOME TO FILL",
          style: mTitleHomepageStyle,
        ),
        SizedBox(
          height: size.height * 0.022,
        ),
        RoundedButton(
          text: " Login ",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
          color: mLightRedColor,
          textcolor: Colors.white,
        ),
        SizedBox(
          height: size.height * 0.022,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 30),
          child: RoundedButton(
            text: "Sign Up",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            },
            color: mLighterRedColor,
            textcolor: Colors.black,
          ),
        ),
      ],
    ));
  }
}
