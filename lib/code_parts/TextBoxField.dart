import 'package:fill/constants/color_constant.dart';
import 'package:flutter/material.dart';

class TextBoxField extends StatelessWidget {
  final Widget child;
  const TextBoxField({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      height: 62.5,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      decoration: BoxDecoration(
          color: mLighterRedColor, borderRadius: BorderRadius.circular(25)),
      child: child,
    );
  }
}
