import 'package:flutter/material.dart';

class FactionCardWidget extends StatefulWidget {
  late String _image;
  late String _title;
  late String _content;

  FactionCardWidget(String image, String title, String content) {
    this._image = image;
    this._title = title;
    this._content = content;
  }
  @override
  State<FactionCardWidget> createState() => _FactionCardWidgetState();
}

class _FactionCardWidgetState extends State<FactionCardWidget> {
  @override
  Widget build(BuildContext context) {
    return faction_card();
  }

  Widget faction_card() {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(left: 14),
      height: 156,
      width: MediaQuery.of(context).size.width - 45,
      decoration: BoxDecoration(
          color: Color(0xff2A2E3D), borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          widget._image,
          height: 110,
          width: 110,
        ),
        Expanded(
            child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 23, left: 10, right: 10),
              child: Text(
                widget._title,
                style: TextStyle(color: Color(0xff66FFA7), fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width-165,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Text(
                widget._content,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            )
          ],
        ))
      ]),
    );
  }
}
