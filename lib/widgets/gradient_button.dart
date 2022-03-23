import 'package:flutter/material.dart';

class GrandientButtonWidget extends StatefulWidget { 
  late String _buttonName;

  GrandientButtonWidget(String button) {
    this._buttonName = button;
  } 
  @override
  State<GrandientButtonWidget> createState() => _GrandientButtonWidgetState();
}

class _GrandientButtonWidgetState extends State<GrandientButtonWidget> {
  @override
  Widget build(BuildContext context) { 
    return buildButton();
  }
  Widget buildButton() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 14, right: 14),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.5, 0.0),
              colors: [Color(0xff903BFE), Color(0xffB639FE)])),
      child: TextButton(
          onPressed: () {
          },
          child: Text(
            widget._buttonName,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
    );
  }
}