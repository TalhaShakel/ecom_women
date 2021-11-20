// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';



class drawer extends StatelessWidget {
  const drawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
    const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Text('Drawer Header'),
    ),
    ListTile(
      title: const Text('Item 1'),
      onTap: () {
        // Update the state of the app.
        // ...
      },
    ),
    ListTile(
      title: const Text('Item 2'),
      onTap: () {
        // Update the state of the app.
        // ...
      },
    ),
    ],
  ),
    );
  }
}
