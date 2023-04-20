import 'package:aanandi/Edit-profile-page.dart';
import 'package:aanandi/orders1page.dart';
import 'package:aanandi/view-profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class sidenavi2 extends StatelessWidget {
  final Function onIndexChanged;

  sidenavi2(this.onIndexChanged);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Flexible(
        flex: 1,
        fit: FlexFit.tight,
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
        ),
        child:  ListView(
          children: [

            ListTile(
              title: Center(child: Text('Dashboard',style: TextStyle(fontSize: 15),)),
              onTap: (){
                onIndexChanged(0);
              },
            ),
            ListTile(
              title: Center(child: Text('Edit Profile',style: TextStyle(fontSize: 15),)),
              onTap: (){
                Get.to(EditProfile());
              },
            ),
            ListTile(
              title: Center(child: Text('View Proflie',style: TextStyle(fontSize: 15),)),
              onTap: (){
                onIndexChanged(1);
                Get.to(viewprofile());
              },
            ),
            ListTile(
              title: Center(child: Text('Orders placed',style: TextStyle(fontSize: 15),)),
              onTap: (){
                onIndexChanged(1);
                Get.to(orders1page());
              },
            ),
            ListTile(
              title: Center(child: Text('New order',style: TextStyle(fontSize: 15),)),
              onTap: (){
                onIndexChanged(2);
              },
            ),
          ],
        ),
      ),
      );
  }
}
