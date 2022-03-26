import 'package:flutter/cupertino.dart';
import 'package:test/Commander/ItemCommander.dart';

import '../SearchComponent/SearchComponentd.dart';

class CommanderOverview extends StatelessWidget{
  const CommanderOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
       alignment: Alignment.center,
      //  width: MediaQuery.of(context).size.width,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SearchComponent(),
          ItemCommander()
        ],
      ),
    );
  }

}