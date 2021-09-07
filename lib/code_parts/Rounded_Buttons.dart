import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 5.0,
        color: color,
        clipBehavior: Clip.antiAlias,
        child: MaterialButton(
          minWidth: size.width * 0.7,
          height: 62.5,
          color: color,
          child: new Text(text,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500, fontSize: 19, color: textcolor)),
          onPressed: press,
        ),
      ),
    );
  }
}
