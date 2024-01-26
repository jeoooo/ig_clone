// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ig_clone/screens/widgets/bottom_navbar.dart';

import 'widgets/stories_bubble.dart';
import 'widgets/top_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List people = [
    'kobe',
    'juan',
    'jessica',
    'kim',
    'peter',
    'john',
    'bruce'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: topAppbar(),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return storiesBubble(text: people[index]);
                }),
          )
        ],
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
