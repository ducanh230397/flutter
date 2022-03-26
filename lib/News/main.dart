import 'package:flutter/cupertino.dart';
import 'package:test/assets.dart';
import 'package:test/widgets/blured_header.dart';
import 'package:test/widgets/info_box.dart';

import '../widgets/news_item.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  
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
        );
  }
  
}