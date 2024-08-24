import 'package:flutter/material.dart';
import 'package:signupandsignin/views/loginpage/loginpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Loginpage(),
                ),
                (route) => true,
              );
            },
            child: Text("Log out")),
      ),
    );
  }
}
