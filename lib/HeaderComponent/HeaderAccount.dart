import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class HeaderAccount extends StatelessWidget {
  final String username;
  final String status;
  const HeaderAccount({Key? key, required this.username, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        alignment: FractionalOffset.center,
        decoration: const BoxDecoration(
         
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.5, 0.0),
              colors: [Color(0xff2A2E3D), Color(0xff2A2E3D)])),
        
        child: Padding(

          padding: const EdgeInsets.fromLTRB(0,10,0,10),
          child:  Row(
            key: UniqueKey(),
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 2, // 60% of space => (6/(6 + 4))
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    Assets.army,
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              Expanded(
                  flex: 6, // 60% of space => (6/(6 + 4))
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        status,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 2, // 60% of space => (6/(6 + 4))
                  child: Row(
                    children: [
                      // Icon(Icons.)
                    ],
                  )),
            ]),
        )
            );
  }
}