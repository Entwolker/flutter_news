import 'package:flutter/material.dart';

class DataSeach extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      query.isEmpty
          ? IconButton(icon: Icon(Icons.keyboard_voice), onPressed: () {})
          : IconButton(icon: Icon(Icons.close), onPressed: () => query = '')
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
