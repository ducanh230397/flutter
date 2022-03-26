import 'package:flutter/material.dart';
import 'package:test/HeaderComponent/HeaderCommander.dart';
import 'package:flutter_switch/flutter_switch.dart';
class SettingComponent extends StatelessWidget {

  final String header;
  String title = "";
  SettingComponent({Key? key, required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child:
          /* add child content here */

          Scaffold(
        backgroundColor: Color(0x00282B35),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(children: [
          HeaderCommander(title:header),
          IteamNotification("Notification",
              "Switch to receive or not receive notification", context),
          IteamNotification(
              "Theme", "Switch to change Dark / Light mode", context),
        ]),
      ),
    );
  }

    Widget IteamNotification(String title, String content, BuildContext context) {
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
                      ),
                      Text(
                        content,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  )),
              FlutterSwitch(
                width: 70,
                height: 25.0,
                valueFontSize: 17.0,
                toggleSize: 25.0,
                value: true,
                borderRadius: 30.0,
                padding: 2.0,
                showOnOff: true,
                onToggle: (val) {
                 
                },
              ),
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