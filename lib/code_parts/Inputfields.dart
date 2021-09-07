import 'package:fill/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'TextBoxField.dart';

class InputFieldBox extends StatelessWidget {
  final String hinttexts;
  final IconData iconpart;
  final ValueChanged<String> onchanged;
  const InputFieldBox(
      {Key? key,
      required this.hinttexts,
      required this.iconpart,
      required this.onchanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextBoxField(
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(
              iconpart,
              color: mLightRedColor,
            ),
            hintText: hinttexts,
            border: InputBorder.none),
      ),
    );
  }
}
