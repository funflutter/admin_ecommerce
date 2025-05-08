import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final TextStyle? style;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;

  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
    this.style,
    this.height,
    this.width,
    this.padding,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: decoration,
        child: Text(
          text,
          style: style,
          // GoogleFonts.dmSans(
          //   fontSize: 16,
          //   color: Colors.white,
          //   letterSpacing: -0.6,
          // ),
        ),
      ),
    );
  }
}
