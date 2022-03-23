import 'package:flutter/material.dart';
import 'package:test/assets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:test/widgets/ImageSlide.dart';
import 'package:test/widgets/blured_header.dart';
import 'package:test/widgets/description_box.dart';
import 'package:test/widgets/donate_cell.dart';
import 'package:test/widgets/faction_card.dart';
import 'package:test/widgets/gradient_button.dart';
import 'package:test/widgets/info_box.dart';
import 'package:test/widgets/map_item.dart';
import 'package:test/widgets/news_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = false;

  Widget icon(String imageName) {
    var image = Image.asset(
      imageName,
      width: 50,
      height: 50,
    );
    return Container(
      margin: EdgeInsets.only(right: 5, top: 40),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: image,
    );
  }

  Widget box1() {
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

///////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202128),
      body: SafeArea(
        top: false,
          child: ListView(children: [
        // ImageSlideWidget(),
        // Container(
        //   padding: const EdgeInsets.all(14),
        //   alignment: Alignment.topLeft,
        //   child: const Text(
        //     'Factions',
        //     style: TextStyle(
        //         fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        //   ),
        // ),
        // Container(
        //   height: 160,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       FactionCardWidget(Assets.logo, 'Soviet Union (CoH 2)',
        //           'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
        //       FactionCardWidget(Assets.logo, 'Soviet Union (CoH 2)',
        //           'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
        //       FactionCardWidget(Assets.logo, 'Soviet Union (CoH 2)',
        //           'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
        //     ],
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(14),
        //   alignment: Alignment.topLeft,
        //   child: const Text(
        //     'Maps',
        //     style: TextStyle(
        //         fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        //   ),
        // ),
        // Container(
        //   height: 120,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       MapItemWidget(Assets.map1, 'Achelous\nRiver'),
        //       MapItemWidget(Assets.map2, 'Montherme'),
        //       MapItemWidget(Assets.map3, 'Tactical'),
        //       MapItemWidget(Assets.map4, 'MOSKOVA'),
        //     ],
        //   ),
        // ),
        // DonateCellWidget(),
        // Container(
        //   height: 320,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       NewsItemWidget(Assets.news1,  'Allied faction featured in Company of Heroes 2'),
        //       NewsItemWidget(Assets.news2,  'Company of Heroes 2: Theater of War - Case Blue DLC Promo Art'),
        //       NewsItemWidget(Assets.news1,  'Company of Heroes 2: Theater of War - Case Blue featured in Company of Heroes 2'),

        //     ],
        //   ),
        // ),
        
          // child: DescriptionBoxWidget(20, 30, 40),
        BluredHeaderWidget(Assets.army,'Fortified Armor Doctrine'),
        InfoBoxWidget('Description', 'Support an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field... \nSupport an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field...\nSupport an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field...'),
        
      ])),
    );
  }
}
