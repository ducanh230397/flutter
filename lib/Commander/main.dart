import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/Commander/CommanderOverview.dart';

import '../HeaderComponent/HeaderCommander.dart';

class Commander extends StatelessWidget {
  const Commander({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return SafeArea (
       
      child : 
         /* add child content here */
         
         DefaultTabController(
        length: 3,
        initialIndex: 0,
        
        child: Scaffold(
          // ignore: prefer_const_literals_to_create_immutables
          body:Container(
            color: Color(0xff2A2E3D),
            alignment: Alignment.center,
            child: Column(children:const [
          HeaderCommander(title: "Soviet Union (CoH 2)"),
          TabBar(
            labelColor: Colors.red,
              tabs: [
                Text("Commander"),
                Text("Unit"),
                Text("Bulding"),
              ],
            ),
            // ignore: prefer_const_constructors
            Expanded(child: TabBarView(
              children: [
                 CommanderOverview(),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_transit),
               
              ],
            ),
          )
        ]),
          )
        
        
        ),
     
    )
      
     );
     
  }

}