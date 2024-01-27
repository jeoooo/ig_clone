import 'package:flutter/material.dart';
import 'package:ig_clone/screens/widgets/search_grid.dart';

class SearchFeed extends StatefulWidget {
  const SearchFeed({Key? key}) : super(key: key);

  @override
  _SearchFeedState createState() => _SearchFeedState();
}

class _SearchFeedState extends State<SearchFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBar(
            title: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      SizedBox(width: 8.0),
                      Text('Search', style: TextStyle(color: Colors.grey[500]))
                    ],
                  ),
                ),
              ),
            ),
          )),
      body: SearchGrid(),
    );
  }
}
