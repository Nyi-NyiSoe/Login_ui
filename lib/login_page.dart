import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'conponents/InputTextField.dart';
import 'conponents/button.dart';
import 'conponents/icon_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('Log In ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const InputTextField(
                hintText: 'Username',
                obscure: false,
                iconName: Icons.person,
              ),
              const InputTextField(
                  hintText: 'Password', iconName: Icons.lock, obscure: true),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5.0,
                  ),
                  Checkbox(
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue;
                        });
                      }),
                  const Text(
                    'Remember me',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 130),
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: const Text('Forgot Password',
                            style: TextStyle(
                              color: Colors.red,
                            ))),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const LoginButton(),
              const SizedBox(
                height: 80,
              ),
             
              const Row(children: [
                 Expanded(child: Divider(thickness: 0.5,color: Colors.white,)),
                 Text('Or Sign in with',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),),
               Expanded(child: Divider(thickness: 0.5,color: Colors.white,))
              ],),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  
                   IconLogin(iconName: Icons.facebook,onTap: (){
                print('facebook icon is clicked');
              },),
              const SizedBox(width: 10,),
              IconLogin(iconName: FontAwesomeIcons.twitter,onTap: (){
                print('twitter icon is clicked');
              },),
              const SizedBox(width: 10,),
              IconLogin(iconName: FontAwesomeIcons.instagram,onTap: (){
                print('instagram icon is clicked');
              },),
              const SizedBox(width: 10,),
               IconLogin(iconName: FontAwesomeIcons.google,onTap: (){
                print('google icon is clicked');
              },),
                ],
              ),
             const SizedBox(height: 20,),
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               
                children: [
                  const Text('Don\'t have an account ?',style: TextStyle(color: Colors.white),),
                  GestureDetector(
                    child: const Text('Sign up',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
