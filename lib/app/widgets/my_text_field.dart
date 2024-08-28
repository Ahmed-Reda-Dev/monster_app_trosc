import 'package:flutter/material.dart';

Widget myTextField({
  required String label,
  required TextInputType keyboardType,
  bool? obscureText = false,
}) {
  return TextFormField(
    cursorColor: const Color(0xFFF8FE11),
    keyboardType: keyboardType,
    style: const TextStyle(
      color: Colors.white,
    ),
    obscureText: obscureText ?? false,
    decoration: InputDecoration(
      suffixIcon: obscureText!
          ? IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_off,
                color: Color(0xFF808696),
              ),
            )
          : null,
      label: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF808696),
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF8FE11),
        ),
      ),
    ),
  );
}
