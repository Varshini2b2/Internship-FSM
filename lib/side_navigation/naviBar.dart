import 'package:flutter/material.dart';

class naviBar extends StatelessWidget {
  const naviBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCollapsed = true;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w < 400 && (MediaQuery.of(context).orientation == Orientation.portrait)? w * 0.7 : null,
      child: Drawer(
        child: Container(
          child: ListView(
              children: [
            ListTile(
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Orders Placed'),
              onTap: () {},
            ),
            ListTile(
              title: Text('New Orders'),
              onTap: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
