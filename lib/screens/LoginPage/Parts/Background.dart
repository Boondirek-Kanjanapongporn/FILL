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
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0.0,
              right: 0.0,
              child: Image.asset("assets/image/Side_Top.png",
                  width: size.width * 0.45, alignment: Alignment.topCenter)),
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
