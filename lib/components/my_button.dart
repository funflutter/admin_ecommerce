import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: GoogleFonts.dmSans(
            fontSize: 16,
            color: Colors.white,
            letterSpacing: -0.6,
          ),
        ),
      ),
    );
  }
}
