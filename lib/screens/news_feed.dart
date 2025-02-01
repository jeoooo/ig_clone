// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ig_clone/screens/widgets/stories_bubble.dart';
import 'package:ig_clone/screens/widgets/top_appbar.dart';
import 'package:ig_clone/screens/widgets/user_posts.dart';

class newsFeed extends StatelessWidget {
  const newsFeed({
    super.key,
    required this.people,
  });

  final List people;

  @override
  Widget build(BuildContext context) {
    int randomHeight = 200 + Random().nextInt(201);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: topAppbar(),
      ),
      body: Column(
        children: [
          storiesBar(people: people),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                      text: people[index],
                      imageUrl: 'https://picsum.photos/$randomHeight');
                }),
          )
        ],
      ),
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
            return storiesBubble(
              text: people[index],
              imageUrl: 'https://picsum.photos/300',
            );
          }),
    );
  }
}
