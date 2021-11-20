// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_10/models/Product.dart';

import '../constants.dart';


class itemcard extends StatelessWidget {
  final Product product;
  final Function press;
  const itemcard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: press,
            child: Container(
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(kDefaultPaddin),
              child: Image.asset((product.image)),
            ),
          ),
        ),
        Text(
          product.title,
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "\$${product.price}",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}