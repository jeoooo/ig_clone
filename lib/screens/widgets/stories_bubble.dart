import 'package:flutter/material.dart';

class storiesBubble extends StatelessWidget {
  final text;
  final String imageUrl;
  const storiesBubble({super.key, this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.red, Colors.orange, Colors.yellow],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                  3.0), // Space between the ring and the avatar
              child: CircleAvatar(
                radius: 30, // Half of the width and height
                backgroundColor: Colors.blueGrey[400],
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
