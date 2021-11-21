// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_10/constants.dart';
import 'package:flutter_application_10/models/Product.dart';
import 'package:flutter_application_10/widgets/counter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'product title image.dart';

class boDy_Detail extends StatelessWidget {
  final Product product;
  const boDy_Detail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.37),
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                      color: Colors.white),
                ),
                product_title_with_image(product: product),
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    cardcounter(),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/add_to_cart.svg")),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          
                          child: Padding(
                            padding: const EdgeInsets.only(left:kDefaultPaddin,right: kDefaultPaddin),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              color: product.color,
                              onPressed: (){}, 
                              child: Text("Buy Now".toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            )),
                          ),
                        ),
                      )
                      ],
                    ),
                        
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
