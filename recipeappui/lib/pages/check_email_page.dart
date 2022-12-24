import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipeappui/pages/loginscreen.dart';

import 'firstpage.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Center(
              child: Text(
                "Check your email",
                style: MainTextStyles.MaintxtStyle,
              ),
            ),
            Center(
              child: Text(
                "We've sent the code to your email",
                style: SecondaryTextStyles.secondarytxtStyle,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: EmailValTextField(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: EmailValTextField(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: EmailValTextField(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: EmailValTextField(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Code expires in:"),
                Text(
                  " 03.15",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            buttondesign(
              button_color: Color.fromARGB(255, 53, 194, 111),
              onPressed: () {},
              heightsize: 50,
              widthsize: 300,
              button_name: "Verify",
            ),
            SizedBox(
              height: 20,
            ),
            buttondesign(
              button_color: Color.fromARGB(255, 169, 159, 159),
              heightsize: 50,
              widthsize: 300,
              onPressed: () {},
              button_name: "Send again",
            ),
          ],
        ),
      ),
    );
  }
}

class EmailValTextField extends StatelessWidget {
  const EmailValTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: "0",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.green))),
    );
  }
}
