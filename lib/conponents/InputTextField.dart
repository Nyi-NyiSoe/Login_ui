import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
    final IconData iconName ;
    final String hintText;
    final bool obscure;
  const InputTextField({
    
    super.key,
    required this.hintText,
    required this.iconName,
    required this.obscure
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
     padding: const EdgeInsets.all(20),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        obscureText: obscure,
        cursorColor: Colors.red,
       decoration: InputDecoration(
         prefixIcon: Icon(iconName,color: Colors.white,),
         hintText: hintText,
         hintStyle: const TextStyle(color: Colors.white,),
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
         focusedBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
           borderRadius: BorderRadius.all(Radius.circular(20)),
           
         ),
        
       ),
            
       
      ),
    );
  }
}
