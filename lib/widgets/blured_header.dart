import 'package:flutter/material.dart';
import 'package:test/assets.dart';
import 'package:blur/blur.dart';


class BluredHeaderWidget extends StatefulWidget {
  late String _image;
  late String _name;

  BluredHeaderWidget(String image, String name) {
    this._image = image;
    this._name = name;
  }
  @override
  State<BluredHeaderWidget> createState() => _BluredHeaderWidgetState();
}

class _BluredHeaderWidgetState extends State<BluredHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return header();
  }

  Widget header(){
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Image.asset(widget._image,alignment: Alignment.bottomRight,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,height: 250,).blurred( 
            blur: 7,
            blurColor: Colors.black,  
            overlay: Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/2),
              child: Image.asset(widget._image, height: 200,
            ))
            )
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [ Color(0xff202128), Color(0x00202128)]))
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width/2,
          margin: EdgeInsets.only(top: 120, left: 25),
          child: Text(
            widget._name,
            maxLines: 2,
            style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold, ),
          ),
        ),
        Container(
          width: 85,
          height: 45,
          margin: EdgeInsets.only(top: 180, left: 25),
          child: TextButton(
            onPressed: () {
            },
            child: Row(children: [
              SizedBox(width: 5),
              Image.asset(Assets.iconGraph,height: 20),
              SizedBox(width: 5),
              Text('State', style: TextStyle(color: Colors.white,fontSize: 14)),
            ],
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff643CB9)),
              foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 135, 60, 185)),
              // maximumSize: MaterialStateProperty
            ),
            )
          )
        
      ],
    )
    ;
  }
}