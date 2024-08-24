import 'package:flutter/material.dart';
import 'package:signupandsignin/views/loginpage/loginpage.dart';
import 'package:signupandsignin/main.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sign Up for Free",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 9,
              ),
              TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value == null || !emailController.text.contains("@")) {
                    return "Please enter a email address";
                  }
                  return null;
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
                height: 9,
              ),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (passwordController.text.length < 8) {
                    return "password must contain atleast 8 characters";
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
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: confirmPasswordController,
                validator: (value) {
                  if (confirmPasswordController.text.isEmpty) {
                    return "confirm password";
                  } else if (confirmPasswordController.text !=
                      passwordController.text) {
                    return "password do not match";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    hintText: "Your Confirm Password",
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
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      emailcheck = emailController.text;
                      passcheck = passwordController.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginpage(),
                        ),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromARGB(246, 5, 95, 230)),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    elevation: WidgetStatePropertyAll(10),
                  ),
                  child: Text("Sign Up"),
                ),
              ),
              Spacer(),
              Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60,
                  ),
                  child: Row(
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Loginpage(),
                                ));
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.blue[700]),
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
