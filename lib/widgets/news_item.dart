import 'package:flutter/material.dart';

class NewsItemWidget extends StatefulWidget {
  late String _image;
  late String _title;

  NewsItemWidget(String image, String title) {
    this._image = image;
    this._title = title;
  }
  @override
  State<NewsItemWidget> createState() => _NewsItemWidgetState();
}

class _NewsItemWidgetState extends State<NewsItemWidget> {
  @override
  Widget build(BuildContext context) {
    return news_item();
  }

  Widget news_item() {
    return Container(
      width: 180,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            width: 172,
            height: 132,
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(border: Border.all(width: 1, color: Color(0xff1D202B))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(widget._image, width: 170, height: 130),
            ),
          ),
          Expanded(child: 
            Text(widget._title, maxLines: 3, style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
