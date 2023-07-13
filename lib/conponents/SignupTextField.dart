import 'package:flutter/material.dart';

class SignupTextField extends StatelessWidget {
  final String? hintText;
  final bool obscure;

  const SignupTextField({
    super.key,
    required this.obscure,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}
