import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/Commander/DetailCommander.dart';

import '../assets.dart';

class ItemCommander extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return GestureDetector(
     onTap: (){
         Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailCommander()),
          );
     },
     child: Container(
    margin: const EdgeInsets.only(top: 10.0),
    height: 150,
     color: Color(0xff2A2E3D),
     child:Row(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
      Image.asset(
                    Assets.army,
                    height: 110,
                    width: 90,
                  ),
      Container(
        margin: const EdgeInsets.only(left: 10.0),
        width: MediaQuery.of(context).size.width*0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text("Fortified Armor Doctrine", style:  TextStyle(color: Color(0xff66FFA7), fontSize: 14, fontWeight: FontWeight.w900)),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text("Support an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field...", 
             style:  TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            // ListView.builder(  
            //   scrollDirection: Axis.vertical,
              
            //   itemCount:5,
            //   itemBuilder: (BuildContext context, int index) {
            //     return  Image.asset(
            //         Assets.skill1,
            //         height: 48,
            //         width: 48,
            //       );
            // })
            
          ],
        )
        ),
      
      
     ],
   ) ,
   ) ,
   );
   
  }
  
}