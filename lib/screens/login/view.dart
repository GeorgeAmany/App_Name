import 'package:flutter/material.dart';
import 'package:new_array_app/screens/register/view.dart';

import '../../shared/design/my_input.dart';
import '../forget_password/view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 20, top: 20, bottom: 20),
          child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const RegisterScreen(),
              ),
              );
            },
            icon:
                const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 51,
            ),
            const Text(
              'LOGIN TO\nMY ACCOUNT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(height: 38),
            MyInput(
              title: 'Email address ',
            ),
            MyInput(
              title: 'password ',
              isPassword: true,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute (
                  builder: (BuildContext context) => const ForgetPasswordScreen(),
                ), );
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 63, end: 63),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(294, 54),
                ),
                child: Text(
                  'next'.toUpperCase(),
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 73),
              child: Row(
                children: [
                  const Text(
                    'New to app?',
                    style: TextStyle(fontSize: 17, color: Color(0xff090808)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute (
                        builder: (BuildContext context) => const RegisterScreen(),
                      ),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 17, color: Color(0xff034C65)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120,),
          ],
        ),
      ),
    );
  }
}
