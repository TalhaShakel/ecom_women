// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_10/models/Product.dart';

import '../constants.dart';

class product_title_with_image extends StatelessWidget {
  const product_title_with_image({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ASTROLOGY BAG",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            product.title,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Price\n",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                TextSpan(
                  text: "\$${product.price}",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ])),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child:
                      Image.asset(product.image, fit: BoxFit.fill))
            ],
          )
        ],
      ),
    );
  }
}
