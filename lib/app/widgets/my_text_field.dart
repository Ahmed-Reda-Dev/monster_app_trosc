import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String label;
  final TextInputType keyboardType;
  bool obscureText;
  final String? Function(String?) validator;
  MyTextField({
    super.key,
    required this.label,
    required this.keyboardType,
    required this.obscureText,
    required this.validator,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFFF8FE11),
      keyboardType: widget.keyboardType,
      style: const TextStyle(
        color: Colors.white,
      ),
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
                icon: Icon(
                  widget.obscureText ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xFF808696),
                ),
              )
            : null,
        label: Text(
          widget.label,
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
      validator: widget.validator,
    );
  }
}

// Widget myTextField({
//    String label,
//   required TextInputType keyboardType,
//   bool? obscureText = false,
// }) {
//   return TextFormField(
//     cursorColor: const Color(0xFFF8FE11),
//     keyboardType: keyboardType,
//     style: const TextStyle(
//       color: Colors.white,
//     ),
//     obscureText: obscureText ?? false,
//     decoration: InputDecoration(
//       suffixIcon: obscureText!
//           ? IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.visibility_off,
//                 color: Color(0xFF808696),
//               ),
//             )
//           : null,
//       label: Text(
//         label,
//         style: const TextStyle(
//           color: Color(0xFF808696),
//         ),
//       ),
//       focusedBorder: const UnderlineInputBorder(
//         borderSide: BorderSide(
//           color: Color(0xFFF8FE11),
//         ),
//       ),
//     ),
//   );
// }
