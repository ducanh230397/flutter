import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width*0.9,
      height: 30,
      margin: const EdgeInsets.only(top: 10.0),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Search...',
        ),
      ),
    );
  }
}
