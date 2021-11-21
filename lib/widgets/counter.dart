import 'package:flutter/material.dart';
import 'package:flutter_application_10/detail/boDy_detailscreen.dart';

import '../constants.dart';

class cardcounter extends StatefulWidget {
  const cardcounter({ Key key }) : super(key: key);

  @override
  _cardcounterState createState() => _cardcounterState();
}
class _cardcounterState extends State<cardcounter> {
  int numofiem=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top:kDefaultPaddin*22),
      child: Row(
        children: [
          buildbutton(
            Icon1:Icons.remove,
            press1: (){
              setState(() {
                if(numofiem>1){
                numofiem--;}
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:kDefaultPaddin/2),
            child: Text(numofiem.toString().padLeft(2,"0"), style: 
            TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
            ,),
          ),buildbutton(
            Icon1:Icons.add,
            press1: (){setState(() {
              numofiem++;
            });
              
            },
          ),
        ],
      ),
    );
  }

  OutlinedButton buildbutton({IconData Icon1, Function press1}) {
    return OutlinedButton(onPressed: press1, child:
         Icon(Icon1,color: Colors.black,));
  }
}