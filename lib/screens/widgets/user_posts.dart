// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

class UserPosts extends StatefulWidget {
  final String text;
  const UserPosts({Key? key, required this.text}) : super(key: key);

  @override
  _UserPostsState createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        color: Colors.blueGrey[200], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(widget.text),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
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
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Liked by ', style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: widget.text,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' and ', style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: 'others',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ]),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 6.0, bottom: 24.0),
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                            text: '${widget.text} ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              'Finding a good Instagram caption is a challenge.',
                        ),
                      ]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
