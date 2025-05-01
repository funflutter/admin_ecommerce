import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextfield extends StatefulWidget {
  final String text;
  final bool obscureText;
  final TextEditingController controller;

  const MyTextfield({
    super.key,
    required this.text,
    required this.obscureText,
    required this.controller,
  });

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
  }

  void _toggleVisibility() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      cursorHeight: 24,
      cursorWidth: 1.6,
      controller: widget.controller,
      obscureText: _obscure,
      keyboardType: widget.obscureText
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: widget.text,
        hintStyle: GoogleFonts.dmSans(
          fontSize: 16,
          color: Colors.grey.shade400,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.grey.shade800,
                  size: 20,
                ),
                onPressed: _toggleVisibility,
              )
            : null,
      ),
    );
  }
}
