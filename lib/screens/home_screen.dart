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
          storiesBar(people: people),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('data'),
                  ],
                ),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          Container(
            height: 400,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(
                      width: 14,
                    ),
                    Icon(Icons.message),
                    SizedBox(
                      width: 14,
                    ),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text('Liked by '),
                Text('jeooo', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(' and'),
                Text(' others', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 4.0),
            child: Row(
              children: [
                Text('jeooo', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}

class storiesBar extends StatelessWidget {
  const storiesBar({
    super.key,
    required this.people,
  });

  final List people;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: people.length,
          itemBuilder: (context, index) {
            return storiesBubble(text: people[index]);
          }),
    );
  }
}
