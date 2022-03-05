import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/Commander/CommanderDetail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return new GestureDetector(
            onTap: () {
              Navigator.push(context,  MaterialPageRoute(builder: (context) => CommanderDetail()),);
            },
            child: new Text("my Title"),
);
  }
  
}