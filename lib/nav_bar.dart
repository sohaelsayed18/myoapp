import 'package:flutter/material.dart';
import 'package:myoapp/home/view.dart';
import 'package:myoapp/notification/view.dart';
import 'package:myoapp/setting/view.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int indexCurrent = 0;
  List pages = const [
    HomePage(),
    NotificationScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexCurrent],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: const Color(0xff0377FE),
        type: BottomNavigationBarType.fixed,
        currentIndex: indexCurrent,
        onTap: (index) {
          setState(() {
            indexCurrent = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.home),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications)),
              label: ""),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.settings),
              ),
              label: ""),
        ],
      ),
    );
  }
}
