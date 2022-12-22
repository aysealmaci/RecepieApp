import 'package:flutter/material.dart';
import 'package:recipeappui/check_email_page.dart';
import 'package:recipeappui/drink_page.dart';
import 'package:recipeappui/firstpage.dart';
import 'package:recipeappui/food_page.dart';

class HomePge extends StatefulWidget {
  const HomePge({Key? key}) : super(key: key);

  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 60, 24, 30),
            child: Container(
              child: searchBar(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Category",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                buttondesign(
                  button_color: Color.fromARGB(255, 53, 194, 111),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePge()));
                  },
                  widthsize: 68,
                  heightsize: 48,
                  button_name: "All",
                ),
                SizedBox(
                  width: 16,
                ),
                buttondesign(
                  button_color: Color.fromARGB(255, 53, 194, 111),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FoodPage()));
                  },
                  widthsize: 86,
                  heightsize: 47,
                  button_name: "Food",
                ),
                SizedBox(
                  width: 16,
                ),
                buttondesign(
                  button_color: Color.fromARGB(255, 53, 194, 111),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DrinkPage()));
                  },
                  widthsize: 87,
                  heightsize: 47,
                  button_name: "Drink",
                )
              ],
            ),
          ),
          Divider(
            thickness: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContentContainer(
                  subtext: "20 min",
                  container_pic_name: "salad",
                  appSize: appSize,
                  container_data: "salad",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                ),
                ContentContainer(
                  container_pic_name: "teajpg",
                  appSize: appSize,
                  container_data: "tea",
                  subtext: "20 min",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContentContainer(
                  container_pic_name: "pancake",
                  appSize: appSize,
                  subtext: "20 min",
                  container_data: "pancake",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                ),
                ContentContainer(
                  container_pic_name: "hotchocolate",
                  appSize: appSize,
                  subtext: "20 min",
                  container_data: "hot chocolate",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContentContainer(
                  container_pic_name: "salad",
                  subtext: "20 min",
                  appSize: appSize,
                  container_data: "salad",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                ),
                ContentContainer(
                  subtext: "20 min",
                  container_pic_name: "pancake",
                  appSize: appSize,
                  container_data: "pancake",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContentContainer(
                  container_pic_name: "greentea",
                  appSize: appSize,
                  container_data: "green tea",
                  subtext: "20 min",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                ),
                ContentContainer(
                  subtext: "20 min",
                  container_pic_name: "cappuccino",
                  appSize: appSize,
                  container_data: "cappuccino",
                  container_height: 250,
                  container_width: appSize.width * 0.43,
                  container_text_color: Color.fromARGB(244, 115, 185, 44),
                )
              ],
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Color.fromARGB(244, 115, 185, 44),
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
      ),
    );
  }

  TextField searchBar() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.clear),
      ),
      onChanged: (String text) {},
      onSubmitted: (String text) {},
    );
  }
}

class BottomButtons extends StatefulWidget {
  const BottomButtons({
    Key? key,
    this.button_name,
  }) : super(key: key);
  final String? button_name;

  @override
  State<BottomButtons> createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  //final Color button_color;
  Color _iconColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {
        setState(() {
          _iconColor = _iconColor == Color.fromARGB(255, 115, 29, 61)
              ? Colors.green
              : Colors.yellow;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
          ),
          Text(widget.button_name!)
        ],
      ),
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    Key? key,
    required this.appSize,
    required this.container_data,
    required this.container_pic_name,
    required this.container_height,
    required this.container_width,
    required this.container_text_color,
    required this.subtext,
  }) : super(key: key);

  final Size appSize;
  final String container_data;
  final String container_pic_name;
  final double container_height;
  final double container_width;
  final Color container_text_color;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: container_height,
      width: container_width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/' + container_pic_name + '.jpg',
                height: container_height * 0.7,
                width: container_width * 0.9,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                container_data,
                style: TextStyle(color: container_text_color),
              ),
              Text(subtext)
            ],
          )),
    );
  }
}
