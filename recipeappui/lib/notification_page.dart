import 'package:flutter/material.dart';
import 'package:recipeappui/firstpage.dart';
import 'package:recipeappui/home_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "New",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  NotificationContent(
                    action_name: "now follow you",
                    name: "sue",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Today",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  NotificationContent(
                      name: "joe", action_name: "now follow you")
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          backgroundColor: Color.fromARGB(255, 53, 194, 111),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 234, 243, 238),
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: appSize.width / 2,
                      child: BottomButtons(
                        button_name: "Profile",
                      ),
                    ),
                    Container(
                      width: appSize.width / 2,
                      child: BottomButtons(
                        button_name: "Notifications",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class NotificationContent extends StatelessWidget {
  const NotificationContent({
    Key? key,
    required this.name,
    required this.action_name,
  }) : super(key: key);

  final String name;
  final String action_name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/' + name + '.jpg',
                    ),
                    fit: BoxFit.cover,
                  )),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                name.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                action_name,
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          buttondesign(
              button_color: Color.fromARGB(255, 53, 194, 111),
              onPressed: () {},
              widthsize: 90,
              button_name: "Follow",
              heightsize: 27)
        ],
      ),
    );
  }
}
