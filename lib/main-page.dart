import 'package:aanandi/View%20prooofile.dart';
import 'package:aanandi/experiment/Responsive_layout.dart';
import 'package:aanandi/experiment/experiiiiiii.dart';
import 'package:aanandi/experiment/mainpage.dart';
import 'package:aanandi/experiment/mediaQuery.dart';
import 'package:aanandi/experiment/mobile_layout.dart';
import 'package:aanandi/experiment/web_Layout.dart';
import 'package:aanandi/vieewOrderrrrs.dart';
import 'package:aanandi/view-profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aanandi/Orders-page.dart';

import 'firebase_options.dart';
import 'orders1page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// void main() {
//   runApp(MyApp());
// }

// Future main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'First',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homepage(),
    );
  }
}
var selectedIndex = 0;
class homepage extends StatelessWidget {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return orders1page();
  }
}
//responsivelayout(mobileLayout: mobileLayout(), webLayout: webLayout())