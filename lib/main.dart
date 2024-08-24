import 'package:flutter/material.dart';
import 'package:signupandsignin/views/loginpage/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}

String emailcheck = "";
String passcheck = "";
