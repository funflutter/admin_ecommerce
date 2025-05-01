import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDropdownField extends StatelessWidget {
  final List<String> items;
  final String? selectedValue;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String?>? onChanged;
  final FormFieldSetter<String>? onSaved;

  const MyDropdownField({
    super.key,
    required this.items,
    this.selectedValue,
    this.hintText = 'Select an option',
    this.validator,
    this.onChanged,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      value: selectedValue,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
          ),
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
      ),
      hint: Text(
        hintText,
        style: GoogleFonts.dmSans(
          fontSize: 14,
          letterSpacing: -0.4,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    letterSpacing: -0.4,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ))
          .toList(),
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.black87,
        ),
        iconSize: 24,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300, // Light shadow
              blurRadius: 16,
              offset: Offset(0, 0), // Drop slightly down
            ),
          ],
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
