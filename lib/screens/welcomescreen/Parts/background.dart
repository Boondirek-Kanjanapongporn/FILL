import 'package:fill/constants/color_constant.dart';
import 'package:fill/constants/style_constant.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            child: Container(
              width: 500,
              margin: EdgeInsets.only(bottom: 670),
              child: Image.asset(
                "assets/image/Top_Space_Clear.png",
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
          child,
        ],
      ),
    );
  }
}
