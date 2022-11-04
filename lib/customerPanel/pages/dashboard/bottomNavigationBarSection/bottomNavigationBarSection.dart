import "package:flutter/material.dart";

import '../../../customWidgets/activityPageSection/activityPage.dart';
import '../pages/chatsPage.dart';
import '../pages/homePage.dart';
import '../pages/settings.dart';
import '../pages/users.dart';

class CustomerBottomNavigationBarSection extends StatefulWidget {
  const CustomerBottomNavigationBarSection({Key? key}) : super(key: key);

  @override
  State<CustomerBottomNavigationBarSection> createState() =>
      _CustomerBottomNavigationBarSectionState();
}

class _CustomerBottomNavigationBarSectionState
    extends State<CustomerBottomNavigationBarSection> {
  final List<Widget> pages = const [
    CustomerActivityPage(),
    Users(),
    HomePage(),
    CustomerChatPage(),
    SettingsPage()
  ];

  var _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        /* appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        foregroundColor: const Color.fromARGB(255, 19, 103, 247),
        title: const Text("News24",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 255, 255, 255),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset("images/icons/gmail.png", height: 40, width: 40),
          )
        ],
      ) */

        drawer: const Drawer(child: Drawer()),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            selectedItemColor: Colors.deepPurple,
            showSelectedLabels: false,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              // color: Color.fromARGB(255, 19, 103, 247),
            ),
            currentIndex: _currentIndex,
            onTap: _tapped,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_activity), label: "Activity"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Handyman"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_sharp), label: "Chats"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
        body: pages[_currentIndex]);
  }

  void _tapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
