import 'package:flutter/material.dart';
import 'conponents/InputTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.grey[900],
        body: const Center(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              InputTextField(
                hintText: 'Username',
                obscure: false,
                iconName: Icons.person,
              ),
              InputTextField(
                  hintText: 'Password', iconName: Icons.lock, obscure: true)
            ],
          ),
        ),
      ),
    );
  }
}
