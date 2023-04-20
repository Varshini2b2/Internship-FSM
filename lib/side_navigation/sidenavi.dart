import 'package:aanandi/view-profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Edit-profile-page.dart';

class sidenavi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,child: Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(25, 75, 0, 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey)
      ),
      child:  ListView(
        children: [
          Column(
            children: [
              SizedBox(height: h*0.015),
              CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 60,
                backgroundImage: AssetImage(
                    "Assets/Profile pic"
                ),
              )
            ],
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              //color: Colors.black,
              child:Text(
                'Suma Varshini',
                style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).primaryColorDark
                ),
              )
          ),
          //function(),
          ListTile(
            title: Center(child: Text('View Profile',style: TextStyle(fontSize: 15),)),
            onTap: (){
             Get.to(viewprofile());
            },
          ),
          ListTile(
            title: Center(child: Text('Edit Profile',style: TextStyle(fontSize: 15),)),
            onTap: (){
              Get.to(EditProfile());
            },
          ),
          ListTile(
            title: Center(child: Text('Close account',style: TextStyle(fontSize: 15),)),
            onTap: (){},
          ),
          ListTile(
            title: Center(child: Text('Notifications',style: TextStyle(fontSize: 15),)),
            onTap: (){},
          ),
          ListTile(
            title: Center(child: Text('Settings',style: TextStyle(fontSize: 15),)),
            onTap: (){},
          ),
          ListTile(
            title: Center(child: Text('Help',style: TextStyle(fontSize: 15),)),
            onTap: (){},
          ),
        ],
      ),
    ),
    );
  }
}
