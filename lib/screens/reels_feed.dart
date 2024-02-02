// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ReelsFeed extends StatefulWidget {
  const ReelsFeed({Key? key}) : super(key: key);

  @override
  _ReelsFeedState createState() => _ReelsFeedState();
}

class _ReelsFeedState extends State<ReelsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios),
            Text('Reels'),
            Icon(Icons.photo_camera_outlined),
          ],
        ),
      ),
      body: Stack(children: [
        Container(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amberAccent),
                          ),
                          SizedBox(width: 12.0),
                          Text('jeooo'),
                          SizedBox(width: 12.0),
                          Text('Follow'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, bottom: 4.0, top: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white60),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 20.0, top: 4.0, bottom: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.music_note, size: 16),
                              SizedBox(width: 4),
                              Text('Radiohead - Airbag'),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 14.0),
                      Icon(Icons.chat_bubble),
                      SizedBox(width: 14.0),
                      Icon(Icons.send),
                      SizedBox(width: 14.0),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 8.0),
                      Text('12.5k'),
                      SizedBox(width: 14.0),
                      Icon(Icons.chat_bubble),
                      SizedBox(width: 8.0),
                      Text('500'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
