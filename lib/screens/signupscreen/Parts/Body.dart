import 'package:fill/constants/color_constant.dart';
import 'package:fill/constants/style_constant.dart';
import 'package:flutter/material.dart';
import 'package:fill/code_parts/Inputfields.dart';
import 'package:fill/code_parts/PasswordField.dart';
import 'package:fill/code_parts/Rounded_Buttons.dart';
import 'package:fill/code_parts/check_Account.dart';
import 'package:fill/screens/LoginPage/login_screen.dart';
import 'package:fill/screens/signupscreen/Parts/Background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Image.asset('assets/images/Fill_Icon_Red_Space_with_F.png',
                scale: 2.5, alignment: Alignment.topCenter),
          ),
          Text(
            "SIGNUP",
            style: mTitleHomepageStyle,
          ),
          InputFieldBox(
              hinttexts: "Email Address",
              iconpart: Icons.person,
              onchanged: (value) {}),
          PasswordField(textname: "Password", onchanged: (value) {}),
          PasswordField(textname: "Confirm Password", onchanged: (value) {}),
          SizedBox(height: 15),
          RoundedButton(
              text: "SIGN UP",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              color: mLightRedColor,
              textcolor: Colors.white),
          SizedBox(
            height: 10,
          ),
          HaveAccountCheck(
            account: "Already have an Account? ",
            signinup: "Sign In",
            displayval: Colors.black,
            colorval: mLightRedColor,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          )
        ])));
  }
}
