import 'package:app_test/screen/sign-up.dart';
import 'package:flutter/material.dart';
import 'package:app_test/widget/text_from_field.dart';
import 'package:app_test/widget/text_field_pass.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Background-Auth.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const MyTextFormField('Email', Icons.mail),
              const TextFieldPass(label: 'Password', icon: Icons.visibility),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,  
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Container(
              width: 300, // Mengubah nilai lebar menjadi 300
              child: MaterialButton(
                onPressed: () {},
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                color: Color(0xFF4960F9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 24),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
