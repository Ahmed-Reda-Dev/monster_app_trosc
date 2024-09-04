import 'package:flutter/material.dart';

import 'my_sized_box.dart';
import 'my_text_field.dart';

class AuthFields extends StatefulWidget {
  final formKey;
  const AuthFields({super.key, required this.formKey});

  @override
  State<AuthFields> createState() => _AuthFieldsState();
}

class _AuthFieldsState extends State<AuthFields> {
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          MyTextField(
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          mySizedBox(height: 24),
          MyTextField(
            label: 'Password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
      
        ],
      ),
    );
  }
}
