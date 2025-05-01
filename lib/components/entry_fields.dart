import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryFields extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const EntryFields({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.dmSans(
          fontSize: 14,
          color: Colors.grey.shade600,
          letterSpacing: -0.3,
        ),
        floatingLabelStyle: GoogleFonts.dmSans(
          color: Colors.grey.shade800,
          letterSpacing: -0.3,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
      ),
    );
  }
}
