import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommanderHeader extends StatelessWidget {
final String title;
 const CommanderHeader({Key? key, required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {

  
    // TODO: implement build
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Row(
        children: [
           new Icon(Icons.arrow_back_ios_new, color: Colors.white,),
           Text(title, style: TextStyle(
             fontWeight: FontWeight.w900,
             color: Colors.white,
             fontSize: 16,
           ),)
        ],
      ),
    );
  }

}

