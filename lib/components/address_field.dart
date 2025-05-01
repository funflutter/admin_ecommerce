import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const AddressField({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 4, // 👈 Makes the field taller and allows top-alignment
      textAlignVertical: TextAlignVertical.top, // 👈 Aligns text to top
      decoration: InputDecoration(
        labelText: labelText,
        alignLabelWithHint: true, // 👈 Keeps label aligned at the top too
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
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
      ),
    );
  }
}
