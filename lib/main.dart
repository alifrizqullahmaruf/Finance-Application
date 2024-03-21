import 'package:app_test/screen/Bottom_Navbar/bottom_nav.dart';
import 'package:app_test/screen/Auth/login-page.dart';
import 'package:app_test/screen/Auth/sign-in.dart';
import 'package:app_test/screen/Bottom_Navbar/profile.dart';
import 'package:app_test/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
