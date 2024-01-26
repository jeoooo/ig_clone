import 'package:flutter/material.dart';

class topAppbar extends StatelessWidget {
  const topAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Instagram'),
          Row(
            children: <Widget>[
              Icon(Icons.add),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          ),
        ],
      ),
    );
  }
}
