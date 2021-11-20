// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_10/models/Product.dart';


class detscr extends StatelessWidget {
  final Product product;
  const detscr({ Key key, this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: product.color,
      appBar: AppBar(backgroundColor: product.color,
      // ignore: prefer_const_constructors
      
       iconTheme: IconThemeData(color: Colors.black),
       leading:IconButton(
           color: Colors.white,
          icon: const Icon(Icons.subdirectory_arrow_left),
          tooltip: 'Open shopping cart',
          onPressed: () {
            Navigator.of(context).pop();
          },
        ), 
       actions: [
         IconButton(
           color: Colors.white,
          icon: const Icon(Icons.favorite),
          tooltip: 'Open shopping cart',
          onPressed: () {
            
          },
        ),
         IconButton(
           color: Colors.white,
          icon: const Icon(Icons.shopping_cart),
          tooltip: 'Open shopping cart',
          onPressed: () {
            
          },
        ),

       ],
    )
    );
  }
}