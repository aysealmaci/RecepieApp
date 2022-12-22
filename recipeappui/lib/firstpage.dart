import 'package:flutter/material.dart';
import 'package:recipeappui/loginscreen.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/service.png',
              height: 250,
              width: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Start Cooking",
              style: MainTextStyles.MaintxtStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Let’s join our community \n\t\t\t\tto cook better food!",
              style: SecondaryTextStyles.secondarytxtStyle,
            ),
            SizedBox(
              height: 130,
            ),
            buttondesign(
              button_name: "Get Started",
              button_color: Color.fromARGB(255, 53, 194, 111),
              heightsize: 50,
              widthsize: 300,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class buttondesign extends StatelessWidget {
  const buttondesign({
    Key? key,
    this.button_name,
    required this.button_color,
    required this.onPressed,
    required this.widthsize,
    required this.heightsize,
  }) : super(key: key);

  final String? button_name;
  final Color button_color;
  final double widthsize;
  final double heightsize;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightsize,
      width: widthsize,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: button_color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32))),
          onPressed: onPressed,
          child: Text(button_name!)),
    );
  }
}

class MainTextStyles {
  static TextStyle MaintxtStyle = const TextStyle(
      color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700);
}

class SecondaryTextStyles {
  static TextStyle secondarytxtStyle = const TextStyle(
    color: Colors.grey,
    fontSize: 17,
  );
}
