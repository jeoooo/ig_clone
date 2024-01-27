// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            SizedBox(width: 20),
            Text('jeooo', style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey[200], shape: BoxShape.circle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '22',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Posts'),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: [
                      Text(
                        '9,420',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: [
                      Text(
                        '322',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('jeooo',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Software Developer | Graphic Designer'),
                    Row(
                      children: [
                        Icon(Icons.link, color: Colors.blue[800]),
                        SizedBox(width: 4.0),
                        Text(
                          'https://jeoooo.github.io/portfolio',
                          style: TextStyle(color: Colors.blue[800]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                    style: FilledButton.styleFrom(
                        fixedSize: Size.fromWidth(150),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        backgroundColor: Colors.blue[600]),
                    onPressed: () {
                      //button functionality
                    },
                    child: Text('Edit Profile')),
                SizedBox(width: 4.0),
                FilledButton(
                    style: FilledButton.styleFrom(
                        fixedSize: Size.fromWidth(180),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        backgroundColor: Colors.blue[600]),
                    onPressed: () {
                      //button functionality
                    },
                    child: Text('Share Profile')),
                IconButton(
                    style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        backgroundColor: Colors.blue[600]),
                    color: Colors.white,
                    onPressed: () {
                      //button functionality
                    },
                    icon: Icon(Icons.person_add)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
