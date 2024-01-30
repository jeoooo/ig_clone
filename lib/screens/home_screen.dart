// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ig_clone/screens/my_profile.dart';
import 'package:ig_clone/screens/search_feed.dart';

import 'news_feed.dart';

final List people = [
  'kobe',
  'juan',
  'jessica',
  'kim',
  'peter',
  'john',
  'bruce'
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _children = [
    newsFeed(people: people),
    SearchFeed(),
    Center(child: Text('reels')),
    Center(child: Text('shop')),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // code to not show the text label per item
        // in the bottom navigation bar
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera),
            label: 'camera',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.theaters), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
