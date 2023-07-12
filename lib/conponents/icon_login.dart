import 'package:flutter/material.dart';

class IconLogin extends StatelessWidget {
  final IconData? iconName;
  final VoidCallback? onTap;
  const IconLogin({super.key,required this.iconName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(iconName,color: Colors.white,size: 50,),
    );
  }

}
