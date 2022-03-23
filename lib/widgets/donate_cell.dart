import 'package:flutter/material.dart';
import 'package:test/widgets/gradient_button.dart';

class DonateCellWidget extends StatefulWidget {
  

  DonateCellWidget() {
    
  }
  @override
  State<DonateCellWidget> createState() => _DonateCellWidgetState();
}

class _DonateCellWidgetState extends State<DonateCellWidget> {
  @override
  Widget build(BuildContext context) {
    return donate_cell();
  }

  Widget donate_cell() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
      padding: EdgeInsets.only(left: 14, right: 14),
      height: 141,
      decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment(1.64, 0.61),
              radius: 8,
              colors: [Color(0xff5E289B), Color(0xff2A2E3D)]),
          borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SUPPORT US',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'While I am running on a treadmill in a strange city with my headphones in and watching a ridiculous amount of news, I am still taking the time to count my',
                textAlign: TextAlign.left,
                maxLines: 5,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
        Container(child: GrandientButtonWidget('DONATE'))
      ]),
    );
  }
}
