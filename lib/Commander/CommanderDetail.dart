import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/HeaderState/CommanderHeader.dart';

class CommanderDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return SafeArea (
      child : Container(
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.5, 0.0),
              colors: [Color(0xCC7E41FE), Color(0xFF1D202B)])
              ),
        child: Column(
          children: [
             CommanderHeader(title: 'SoViet Unio (CoH 2)',),
          ],
        ) /* add child content here */,
      )
     );
     
  }

}