import 'package:flutter/material.dart';
import 'package:recipeappui/firstpage.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({Key? key}) : super(key: key);

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              "Welcome!",
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
                  child: Icon(
                      _obsecureText ? Icons.visibility_off : Icons.visibility),
                )),
            obscureText: _obsecureText,
          ),
          SizedBox(
            height: 50,
          ),
        ]),
      )),
    );
  }
}
