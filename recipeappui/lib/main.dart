import 'package:flutter/material.dart';
import 'package:recipeappui/pages/check_email_page.dart';
import 'package:recipeappui/pages/firstpage.dart';
import 'package:recipeappui/pages/home_page.dart';
import 'package:recipeappui/pages/notification_page.dart';
import 'package:recipeappui/pages/profile_page.dart';

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
      title: 'Recepie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}
