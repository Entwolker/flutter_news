import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String imageURL, title, description;
  BlogTile({this.imageURL, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(imageURL),
          Text(title),
          Text(description),
        ],
      ),
    );
  }
}
