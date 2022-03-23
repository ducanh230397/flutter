import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test/assets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DescriptionBoxWidget extends StatefulWidget {
  late double _defensive;
  late double _aggressive;
  late double _combinedArm;
  late List<ChartData> chartData = [
    ChartData('Defensive', _defensive, Color(0xff3B98EE)),
    ChartData('Aggressive', _aggressive, Color(0xff57C845)),
    ChartData('Combined Arm', _combinedArm, Color(0xffE10000))
  ];

  DescriptionBoxWidget(
    double defensive,
    double aggressive,
    double combinedArm,
  ) {
    this._defensive = defensive;
    this._aggressive = aggressive;
    this._combinedArm = combinedArm;
  }
  
  @override
  State<DescriptionBoxWidget> createState() => _DescriptionBoxWidgetState();
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

Widget Property(int color, String property){
  return Container(
    margin: EdgeInsets.all(10),
    child: Row(
      children: [
        Container(
          width: 20,
          height: 20,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(color: Color(color)),
        ),
        Text(
          property,
          style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.bold),
          )
      ],
    ),

  );
}

class _DescriptionBoxWidgetState extends State<DescriptionBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return buildBox();
  }

  // Widget buildImage(String image) {
  //   return Container(
  //     margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
  //     child: Image.asset(
  //       image,
  //       width: 50,
  //       height: 50,
  //     ),
  //   );
  // }

  Widget buildBox() {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width - 20,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0xff2A2E3D), borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Row(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width/2-10,
              height: 250,
              child: SfCircularChart(series: <CircularSeries>[
              DoughnutSeries<ChartData, String>(
                  innerRadius: '75%',
                  radius: '90%',
                  dataSource: widget.chartData,
                  pointColorMapper: (ChartData data, _) => data.color,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y),
            ])),
            Container(
              width: MediaQuery.of(context).size.width/2-10,
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Property(0xff3B98EE, 'Defensive'),
                Property(0xff57C845, 'Aggressive'),
                Property(0xffE10000, 'Combined Arm.'),
              ],)
            )
          ],
        )
      ]),
    );
  }
}
