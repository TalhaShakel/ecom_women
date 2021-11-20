// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_10/constants.dart';
import 'package:flutter_application_10/detail/detail_screen.dart';
import 'package:flutter_application_10/loginpage.dart';
import 'package:flutter_application_10/models/Product.dart';
import 'package:flutter_application_10/widgets/appbar.dart';
import 'package:flutter_application_10/widgets/drawer.dart';

import 'widgets/cate_underline.dart';
import 'widgets/item_card.dart';

class homepage extends StatelessWidget {
  const homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: PreferredSize(
        child: appbar(),
        preferredSize: Size.fromHeight(pad * 3),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPaddin / 4, horizontal: kDefaultPaddin),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        cate(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75),
            itemBuilder: (context, index) => itemcard(
             
              product: products[index],
               press: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => detscr(product: products[index]))),
            ),
          ),
        ))
      ],
    );
  }
}
