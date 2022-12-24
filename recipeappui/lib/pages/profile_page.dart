import 'package:flutter/material.dart';

import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/mary.jpg',
                        ),
                        fit: BoxFit.cover,
                      )),
                  alignment: Alignment.center,
                ),
              ),
              Text(
                "Mary",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileInfos(
                    info_count: "32",
                    info_name: "Recepies",
                  ),
                  ProfileInfos(
                    info_count: "782",
                    info_name: "Following",
                  ),
                  ProfileInfos(
                    info_count: "1287",
                    info_name: "Followers",
                  ),
                ],
              ),
              SizedBox(
                height: 10,
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
            ],
          ),
        ),
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
        ));
  }
}

class ProfileInfos extends StatelessWidget {
  const ProfileInfos({
    Key? key,
    required this.info_name,
    required this.info_count,
  }) : super(key: key);

  final String info_name;
  final String info_count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          info_count,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          info_name,
          style: TextStyle(color: Colors.grey.shade300),
        ),
      ],
    );
  }
}
