import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/Account/PrivacyComponent.dart';
import 'package:test/Account/SettingComponent.dart';
import 'package:test/HeaderComponent/HeaderAccount.dart';
import 'package:test/assets.dart';

class Account extends StatelessWidget {
  final List<String> fakeDataAccount = [
    "Recent View",
    "Setting",
    "Privacy & Terms",
    "Donate",
    "Feedback"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.black,
      ),
      child: Column(
        children: [
          const HeaderAccount(
            username: 'Muối 0001',
            status: "Color like the wind ...",
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: fakeDataAccount.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 50,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.5, 0.0),
                            colors: [Color(0xff2A2E3D), Color(0xff2A2E3D)])),
                    child: IteamAccount(fakeDataAccount[index], context, index),
                  );
                }),
          ),
          Container(
            height: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.5, 0.0),
                    colors: [Color(0xff2A2E3D), Color(0xff2A2E3D)])),
            margin: const EdgeInsets.only(top: 20.0),
            child: IteamAccount("LogOut", context, 5),
          )
        ],
      ),
    ));
  }

  // ignore: non_constant_identifier_names
  Widget IteamAccount(String title, BuildContext context, num type) {
    String header = "";
   String image= "";

    if (type == 0) {
      header = "Recent View";
      image = Assets.recent;
    }
    if (type == 1) {
      header = "Setting";
        image = Assets.setting;
    }
    if (type == 2) {
      header = "Privacy & Terms";
       image = Assets.private;
    }
    if (type == 3) {
      header = "Donate";
      image = Assets.private;
    }
    if (type == 4) {
      header = "FeedBack";
      image = Assets.feedback;
    }
    else if  (type == 5){
      image =Assets.logout;
    }
    return GestureDetector(
        onTap: () {
          if(type ==2){
              Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PrivacyComponent()),
          );
          }
          else{
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SettingComponent(header: header)),
          );
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                   Image.asset(
          image,
          height: 20,
          width: 20,
        ),
                  Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ],
              ),
              const Icon(
                Icons.navigate_next,
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}