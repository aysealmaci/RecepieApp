import 'package:flutter/material.dart';
import 'package:recipeappui/check_email_page.dart';
import 'package:recipeappui/firstpage.dart';
import 'package:recipeappui/home_page.dart';
import 'package:recipeappui/notification_page.dart';
import 'package:recipeappui/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}
