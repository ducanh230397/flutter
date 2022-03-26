import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivacyComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        children: [
          IteamPrivacy("Privacy Policies",context)
        ],
      ) ,
    );
  }
   Widget IteamPrivacy(String title,  BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      margin: const EdgeInsets.only(top: 10.0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.5, 0.0),
              colors: [Color(0xff2A2E3D), Color(0xff2A2E3D)])),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              // const Icon(Icons.access_time,color: Colors.white,),
              Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Colors.white),
                      )
                    ],
                  )),
             
            ],
          ),
          // FlutterSwitch(
          //     width: 125.0,
          //     height: 55.0,
          //     valueFontSize: 25.0,
          //     toggleSize: 45.0,
          //     value: isSwitched,
          //     borderRadius: 30.0,
          //     padding: 8.0,
          //     showOnOff: true,
          //     onToggle: (val) {
          //       isSwitched= val;
          //     },
          //   ),
        ],
      ),
    );
  }
}