import 'package:flutter/material.dart';
import 'package:test/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'HomeScreen.dart';

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
      home: const MyStatefulWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Business',
      style: optionStyle,
    ),
    Text(
      'School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget homeScreen = HomeScreen();
    Widget getBody( )  {
    if(this._selectedIndex == 0) {
      return this.homeScreen;
    } else if(this._selectedIndex==1) {
      return this.homeScreen;
    } else {
      return this.homeScreen;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _widgetOptions[_selectedIndex]
      ),
      body: Center(
        child: this.getBody(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
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

  Widget buildButton(String button) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 14,right: 14),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.5, 0.0),
              colors: [Color(0xff903BFE), Color(0xffB639FE)])),
      child: TextButton(
          onPressed: () {
            setState(() {
              isPressed = !isPressed;
            });
          },
          child: Text(
            button,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
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
                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
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
        Container(
          
          child: buildButton('DONATE')
        )
      ]),
    );
  }

  Widget faction_card(String image, String title, String content) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(left: 14),
      height: 156,
      width: MediaQuery.of(context).size.width - 45,
      decoration: BoxDecoration(
          color: Color(0xff2A2E3D), borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          image,
          height: 110,
          width: 110,
        ),
        Expanded(
            child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 23, left: 10, right: 10),
              child: Text(
                title,
                style: TextStyle(color: Color(0xff66FFA7), fontSize: 16),
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width-165,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Text(
                content,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            )
          ],
        ))
      ]),
    );
  }

  Widget map_item(String image, name) {
    var background_img = ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(image, fit: BoxFit.cover, width: 100, height: 100),
    );
    var map_name = Container(
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.bottomCenter,
      child: Text(
      name,
      style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    );
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          background_img,
          
          Container(
            width: 100,
            height: 100,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ Color(0x00000000,), Color(0xd9643CB9)]))
          ),
          map_name,
        ],
      ),
    );
  }

///////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202128),
      body: SafeArea(
          child: ListView( children: [
        ImageSlideshow(
          width: double.infinity,
          height: 220,
          initialPage: 0,
          indicatorColor: Colors.blue,
          indicatorBackgroundColor: Colors.grey,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'assets/image1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/image2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/image3.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(14),
          alignment: Alignment.topLeft,
          child: Text(
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
              faction_card(Assets.logo, 'Soviet Union (CoH 2)',
                  'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
              faction_card(Assets.logo, 'Soviet Union (CoH 2)',
                  'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the'),
              faction_card(Assets.logo, 'Soviet Union (CoH 2)',
                  'The Soviet Union is the original Allied faction featured in Company of Heroes 2. As a member of the Allies, it is paired with the US Forces and the British Forces. Unlike the')
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(14),
          alignment: Alignment.topLeft,
          child: Text(
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
              map_item(Assets.map1, 'Achelous\nRiver'),
              map_item(Assets.map2, 'Montherme'),
              map_item(Assets.map3, 'Tactical'),
              map_item(Assets.map4, 'MOSKOVA'),
            ],
          ),
        ),
        box1()
      ])),
    );
  }
}
