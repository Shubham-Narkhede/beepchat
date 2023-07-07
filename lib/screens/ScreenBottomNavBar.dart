import 'package:flutter/material.dart';

import 'ScreenChatList.dart';

class ScreenBottomBarNav extends StatefulWidget {
  @override
  _ScreenBottomBarNavState createState() => _ScreenBottomBarNavState();
}

class _ScreenBottomBarNavState extends State<ScreenBottomBarNav> {
  int selectedIndex = 0;

  List<Widget> list = [
    ScreenChatList(),
    ScreenChatList(),
    ScreenChatList(),
    ScreenChatList(),
    ScreenChatList(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: bottomIcon("messaging",
                  selectedIndex == 0 ? Colors.black : Colors.blueGrey),
              label: "Messaging"),
          BottomNavigationBarItem(
              icon:
                  bottomIcon("call", selectedIndex == 1 ? Colors.black : null),
              label: "Calls"),
          BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.yellow, shape: BoxShape.circle),
                  child: const Icon(Icons.add)),
              label: ""),
          BottomNavigationBarItem(
              icon: bottomIcon(
                  "search", selectedIndex == 3 ? Colors.black : null),
              label: "Search"),
          BottomNavigationBarItem(
              icon: bottomIcon(
                  "prodile", selectedIndex == 4 ? Colors.black : null),
              label: "Profile")
        ],
        currentIndex: selectedIndex,
        onTap: (i) {
          setState(() {
            selectedIndex = i;
          });
        },
        selectedItemColor: Colors.black,
      ),
    );
  }

  Widget bottomIcon(String imageUrl, Color? color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Image.asset(
        "assets/bottomBarIcons/$imageUrl.png",
        color: color,
      ),
    );
  }
}
