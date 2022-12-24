import 'package:flutter/material.dart';

import 'package:recipeappui/pages/firstpage.dart';

import 'package:recipeappui/pages/sign_up_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 130,
              ),
              Center(
                child: Text(
                  "Welcome Back!",
                  style: MainTextStyles.MaintxtStyle,
                ),
              ),
              Center(
                child: Text(
                  "Please enter your account here",
                  style: SecondaryTextStyles.secondarytxtStyle,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 241, 241, 242),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obsecureText = !_obsecureText;
                        });
                      },
                      child: Icon(_obsecureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    )),
                obscureText: _obsecureText,
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(onPressed: () {}, child: Text("Forget password?")),
              buttondesign(
                button_color: Color.fromARGB(255, 53, 194, 111),
                onPressed: () {},
                heightsize: 50,
                widthsize: 300,
                button_name: "Login",
              ),
              SizedBox(
                height: 20,
              ),
              Text("Or continue with"),
              SizedBox(
                height: 20,
              ),
              buttondesign(
                button_color: Color.fromARGB(255, 204, 33, 33),
                onPressed: () {},
                heightsize: 50,
                widthsize: 300,
                button_name: "Google",
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Don't have any account?"),
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpscreen()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
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


/*
 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 15),
                    )),
*/