import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;

  const EmailField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
    this.hintStyle,
    this.textStyle,
    this.labelText,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      // (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Email cannot be empty';
      //   }
      //   if (!value.trim().endsWith('@gmail.com')) {
      //     return 'Email must end with @gmail.com';
      //   }
      //   return null;
      // },
      style: textStyle,
      // GoogleFonts.dmSans(
      //   fontSize: 16,
      //   letterSpacing: -0.4,
      //   fontWeight: FontWeight.w500,
      //   color: Colors.black87,
      // ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelStyle,
        //  GoogleFonts.dmSans(
        //   fontSize: 16,
        //   letterSpacing: -0.4,
        //   fontWeight: FontWeight.w500,
        //   color: Colors.black45,
        // ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade700,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
