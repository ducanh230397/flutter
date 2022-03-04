import 'package:flutter/material.dart';
import 'package:test/assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {

  //     _counter++;
  //   });
  // }

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

  Widget buildButton() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 130,
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
            'Back to Home',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
    );
  }

  Widget box1() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 14, right: 14),
      height: 72,
      decoration: BoxDecoration(
          color: Color(0xff643CB9),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account nunber:',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                '014801808123',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          height: 44,
          padding: EdgeInsets.only(top: 13, bottom: 13, left: 30, right: 30),
          decoration: BoxDecoration(
              color: Color(0xffEF6F11),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            'COPY',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        )
      ]),
    );
  }

  Widget box2() {
    return Container(
      margin: EdgeInsets.only(top: 2),
      padding: EdgeInsets.only(left: 14, right: 14),
      height: 72,
      decoration: BoxDecoration(
          color: Color(0xff643CB9),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10))),
      child: Row(children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account name:',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                'Đỗ Văn Thực',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mau1 = BoxDecoration(
        gradient: RadialGradient(
            center: Alignment(0.6, 0.7),
            radius: 0.7,
            stops: ([0.0, 1.0]),
            colors: [Color(0xff5E289B), Color(0xff363A47)]));
    var mau2 = BoxDecoration(
        gradient: RadialGradient(
            center: Alignment(0.6, 0.7),
            radius: 0.7,
            stops: ([0.0, 1.0]),
            colors: [
          Color.fromARGB(255, 155, 40, 107),
          Color.fromARGB(255, 71, 54, 54)
        ]));
    return Scaffold(
        body: Container(
      decoration: isPressed ? mau1 : mau2,
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 21, top: 22, right: 19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Thank you for your suppor',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white),
              ),
              Text(
                'To augment your munitions or fuel resources, support local attacks with the Artillery Field...',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0,
                    color: Colors.white),
              ),
              Row(
                children: [
                  icon(Assets.bank1),
                  icon(Assets.bank2),
                  icon(Assets.bank3)
                ],
              ),
              box1(),
              box2(),
              SizedBox(
                height: 95,
              ),
              buildButton()
            ],
          ),
        ),
      ),
    )
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
        );
  }
}
