
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/Commander/main.dart';
import 'package:test/assets.dart';
import 'package:test/widgets/ImageSlide.dart';
import 'package:test/widgets/donate_cell.dart';
import 'package:test/widgets/faction_card.dart';
import 'package:test/widgets/map_item.dart';
import 'package:test/widgets/news_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return GestureDetector(
            // onTap: () {
            //   Navigator.push(context,  MaterialPageRoute(builder: (context) => const Commander()),);
            // },
            child:  ListView(children: [
              ImageSlideWidget(),
        Container(
          padding: const EdgeInsets.all(14),
          alignment: Alignment.topLeft,
          child: const Text(
            'Factions',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FactionCardWidget(Assets.logo, 'Soviet Union (CoH 2)',
                  'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
              FactionCardWidget(Assets.logo, 'Soviet Union (CoH 2)',
                  'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
              FactionCardWidget(Assets.logo, 'Soviet Union (CoH 2)',
                  'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(14),
          alignment: Alignment.topLeft,
          child: const Text(
            'Maps',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MapItemWidget(Assets.map1, 'Achelous\nRiver'),
              MapItemWidget(Assets.map2, 'Montherme'),
              MapItemWidget(Assets.map3, 'Tactical'),
              MapItemWidget(Assets.map4, 'MOSKOVA'),
            ],
          ),
        ),
        DonateCellWidget(),
        Container(
          height: 320,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              NewsItemWidget(Assets.news1,  'Allied faction featured in Company of Heroes 2'),
              NewsItemWidget(Assets.news2,  'Company of Heroes 2: Theater of War - Case Blue DLC Promo Art'),
              NewsItemWidget(Assets.news1,  'Company of Heroes 2: Theater of War - Case Blue featured in Company of Heroes 2'),

            ],
          ),
        ),
        
            ],),
);
  }
  
}