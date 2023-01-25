import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool enabled;

  const AccountTextField({
    super.key,
    required this.controller,
    required this.label,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 5,
      ),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(.2),
          filled: true,
          label: Text(
            label,
            style: GoogleFonts.lato(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
