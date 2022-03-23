import 'package:flutter/material.dart';

class MapItemWidget extends StatefulWidget { 
  late String _image;
  late String _content;

  MapItemWidget(String image, String content) {
    this._image = image;
    this._content = content; 
  } 
  @override
  State<MapItemWidget> createState() => _MapItemWidgetState();
}

class _MapItemWidgetState extends State<MapItemWidget> {
  @override
  Widget build(BuildContext context) { 
    return map_item();
  }
  
  Widget map_item(){
    var background_img = ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(widget._image, fit: BoxFit.cover, width: 100, height: 100),
    );
    var map_name = Container(
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.bottomCenter,
      child: Text(
      widget._content,
      style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    );
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: Color(0xff1D202B))),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          background_img,
          
          Container(
            width: 100,
            height: 100,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ Color(0x00000000,), Color(0xd9643CB9)]))
          ),
          map_name,
        ],
      ),
    );
  }
  }
