// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';

class storiesBubble extends StatelessWidget {
  final text;
  const storiesBubble({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey[400],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('adsad'),
        ],
      ),
    );
  }
}
