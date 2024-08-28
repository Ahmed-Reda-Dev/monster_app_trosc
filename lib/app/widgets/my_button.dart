import 'package:flutter/material.dart';

ElevatedButton myButton({
  required BuildContext context,
  required String text,
  required void Function()? onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFF8FE11),
      fixedSize: const Size(311, 48),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Color(0xFF141414),
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
