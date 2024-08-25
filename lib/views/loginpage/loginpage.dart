import 'package:flutter/material.dart';
import 'package:signupandsignin/main.dart';
import 'package:signupandsignin/views/homepage/homepage.dart';
import 'package:signupandsignin/views/sigininpage/sigininpage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController password2controller = TextEditingController();
  TextEditingController email2controller = TextEditingController();
  bool rememberme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 48,
                ),
                Text(
                  "Sign in to Your Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 38,
                ),
                TextFormField(
                  controller: email2controller,
                  validator: (value) {
                    if (value != emailcheck) {
                      return "Wrong email address";
                    } else if (value!.isEmpty) {
                      return "enter email address";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Your Email Address",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(78, 158, 158, 158))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(86, 158, 158, 158))),
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                TextFormField(
                  controller: password2controller,
                  validator: (value) {
                    if (value != passcheck) {
                      return "Wrong password";
                    } else if (value!.isEmpty) {
                      return "enter password";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Your Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(78, 158, 158, 158))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(86, 158, 158, 158))),
                      suffixIcon: Icon(Icons.visibility_off)),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: rememberme,
                        onChanged: (value) {
                          setState(() {
                            rememberme = value!;
                          });
                        }),
                    Text("Remember Me"),
                    Spacer(),
                    TextButton(onPressed: () {}, child: Text("Forgot Password"))
                  ],
                ),
                Container(
                  width: 500,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ));
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(246, 5, 95, 230)),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: WidgetStatePropertyAll(10),
                      ),
                      child: Text("Sign In")),
                ),
                Spacer(),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                    child: Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SigninPage(),
                                  ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.blue[700]),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
