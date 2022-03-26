import 'package:flutter/cupertino.dart';
import 'package:test/assets.dart';
import 'package:test/widgets/blured_header.dart';
import 'package:test/widgets/description_box.dart';
import 'package:test/widgets/info_box.dart';

class DetailCommander extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     child: ListView(
       children: [  
         BluredHeaderWidget(Assets.army,'Fortified Armor Doctrine'),
         DescriptionBoxWidget(20.0,30.0,50.0),
        InfoBoxWidget('Description', 'Support an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field... \nSupport an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field...\nSupport an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field...'),
        InfoBoxWidget('Bio', 'Support an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field... \nSupport an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field...\nSupport an aggressive strategy; use supply trucks to augment your munitions or fuel resources, support local attacks with the Artillery Field...'),],
     ),
   );
  }
  
}