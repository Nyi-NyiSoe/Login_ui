import 'package:flutter/material.dart';
import 'package:login_ui/login_page.dart';
import 'conponents/SignupTextField.dart';
import 'conponents/button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: const BackArrow(),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Row(
              children: [
                Expanded(
                    child: SignupTextField(
                  hintText: 'First Name',
                  obscure: false,
                )),
                Expanded(
                    child: SignupTextField(
                  hintText: 'Last Name',
                  obscure: false,
                )),
              ],
            ),
            const SignupTextField(
              hintText: 'Email',
              obscure: false,
            ),
            const SignupTextField(
              hintText: 'Password',
              obscure: true,
            ),
            const SignupTextField(
              hintText: 'Confirm Password',
              obscure: true,
            ),
           
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue;
                      });
                    }),
                const Text(
                  'I Agree with',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 3,
                ),
                GestureDetector(
                    onTap: () {
                      print('privacy is clicked');
                    },
                    child: const Text(
                      'privacy',
                      style: TextStyle(color: Colors.red),
                    )),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  'and',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 3,
                ),
                GestureDetector(
                    onTap: () {
                      print('policy is clicked');
                    },
                    child: const Text(
                      'policy',
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
            Button(
              buttonText: 'Sign up',
              onTap: () {
                print('sign up button is clicked');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account ?',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const LoginPage();
                    }));
                  },
                  child: const Text('Log in',style: TextStyle(color: Colors.red),),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ));
  }
}
