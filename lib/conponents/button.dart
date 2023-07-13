import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const Button({super.key,required this.buttonText,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
            child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
