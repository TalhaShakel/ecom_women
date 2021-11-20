// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';


class appbar extends StatelessWidget {
  const appbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.white,
      // ignore: prefer_const_constructors
      title: Text("Home Page",
      // ignore: prefer_const_constructors
      style: TextStyle(
        color: Colors.grey
      ),
      ),
       iconTheme: IconThemeData(color: Colors.black),
       actions: [
         IconButton(
          icon: const Icon(Icons.favorite),
          tooltip: 'Open shopping cart',
          onPressed: () {
            
          },
        ),
         IconButton(
          icon: const Icon(Icons.shopping_cart),
          tooltip: 'Open shopping cart',
          onPressed: () {
            
          },
        ),

       ],
    );
  }
}