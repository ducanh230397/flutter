import 'package:flutter/material.dart';

class InfoBoxWidget extends StatefulWidget {
  late String _title;
  late String _content;

  InfoBoxWidget(String title, String content) {
    this._title = title;
    this._content = content; 
  } 
  @override
  State<InfoBoxWidget> createState() => _InfoBoxWidgetState();
}

class _InfoBoxWidgetState extends State<InfoBoxWidget> {
  @override
  Widget build(BuildContext context) { 
    return faction_card();
  }  

  Widget faction_card() { 
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width - 45,
      decoration: BoxDecoration(
          color: Color(0xff2A2E3D), borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Expanded(
            child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                widget._title,
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width-165,
              alignment: Alignment.topLeft,
              child: Text(
                widget._content,
                style: TextStyle(color: Colors.white, fontSize: 12, height: 1.5),
              ),
            )
          ],
        ))
      ]),
    );
  }

}