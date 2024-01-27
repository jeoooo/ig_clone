// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        '69420',
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
        ],
      ),
    );
  }
}
