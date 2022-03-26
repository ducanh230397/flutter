import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderCommander extends StatelessWidget {
  final String title;
  const HeaderCommander({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      child: Row(
      children: [
        const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 0.0),
          child: Text(title,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 16,
              )),
        )
      ],
    ),
    );
  }
}
