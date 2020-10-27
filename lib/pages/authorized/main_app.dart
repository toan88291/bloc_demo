import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'profile/profile_edit_page.dart';

class MainApp extends StatefulWidget {
  static const ROUTE_NAME = 'MainApp';
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main App'),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomePage(),
          Container(
            color: Colors.cyan,
          ),
          ProfileEditPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
