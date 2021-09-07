import 'package:flutter/material.dart';

class HaveAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  final Color colorval;
  final String account;
  final String signinup;
  final Color displayval;
  const HaveAccountCheck(
      {Key? key,
      this.login = true,
      required this.colorval,
      required this.press,
      required this.signinup,
      required this.displayval,
      required this.account})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          account,
          style: TextStyle(color: displayval),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            signinup,
            style: TextStyle(color: colorval, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
