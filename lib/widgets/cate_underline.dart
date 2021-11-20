// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants.dart';
class cate extends StatefulWidget {
  const cate({ Key key }) : super(key: key);

  @override
  _cateState createState() => _cateState();
}

class _cateState extends State<cate> {
List <String> cat1=["PLAY BOX","Game","GTA City", "IGI PROECT","G ONE"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cat1.length,
        itemBuilder: (context, index) => cate_with_underline(index),
      ),
    );
  }

  Widget cate_with_underline(int index) {
    return 
  
  GestureDetector(
    onTap: (){
      setState(() {
        selectedIndex = index;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal:kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Text(cat1[index],
          style: TextStyle(
            color: selectedIndex == index? Colors.black: Colors.grey,
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),
          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPaddin/5),
            height: 2,
            width: 40,
            color: selectedIndex == index? Colors.black: Colors.transparent,
          )
        ],
      ),
    ),
  );
}}