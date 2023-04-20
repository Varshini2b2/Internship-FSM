import 'dart:html';

import 'package:aanandi/Edit-profile-page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:aanandi/side_navigation/sidenavi.dart';

import 'main-page.dart';

var indexclicked = 1;

class viewprofile extends StatefulWidget {
  const viewprofile({Key? key}) : super(key: key);

  @override
  State<viewprofile> createState() => _viewprofileState();
}

class _viewprofileState extends State<viewprofile> {

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            " ",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: BackButton(),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: StreamBuilder<List<User>>(
          stream: readUsers(),
          builder: (context,snapshot){
            if (snapshot.hasError){
              return Text('something went wrong! ${snapshot.error}');
            } else if (snapshot.hasData){
              print(snapshot.data);
              print("hjj");
              final users = snapshot.data!;

              return ListView(
                children: users.map(buildUser).toList(),
                  );
            }else{
              return Center(child: CircularProgressIndicator());
            }
          }
        )

    );
  }
  Widget buildUser(User user) => ListTile(
    leading: CircleAvatar(child: Text('${user.Organizationname}')),
    title: Text(user.firstname),
    subtitle: Text(user.lastname),

  );

  Stream<List<User>> readUsers() => FirebaseFirestore.instance.collection('users')
      .snapshots().map((snapshot) => snapshot.docs.map((doc) => User.fromJson(doc.data()) ).toList());

}
class User {
  late String id;
  late final String firstname;
  late final String lastname;
  late final String Organizationname;
  late final String Designation;
  late final String GSTnumber;
  late final String emailID;
  late final String phonenumber;
  late final String StreetAddress1;
  late final String StreetAddress2;
  late final String AreaCity;
  late final String state;
  late final String postalCode;

  User({
    this.id = '',
    required this.firstname,
    required this.lastname,
    required this.Organizationname,
    required this.Designation,
    required this.GSTnumber,
    required this.emailID,
    required this.phonenumber,
    required this.StreetAddress1,
    required this.StreetAddress2,
    required this.AreaCity,
    required this.state,
    required this.postalCode,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'firstname': firstname,
    'lastname' : lastname,
    'Organizationname': Organizationname,
    'Designation': Designation,
    'GSTnumber': GSTnumber,
    'emailID': emailID,
    'phonenumber': phonenumber,
    'StreetAddress1': StreetAddress1,
    'StreetAddress2': StreetAddress2,
    'AreaCity': AreaCity,
    'state': state,
    'postalCode': postalCode,
  };

  static User fromJson(Map<String, dynamic> json) => User(
      firstname: json['firstname'],
      lastname: json['lastname'],
      Organizationname: json['Organizationname'],
      Designation: json['Designation'],
      GSTnumber: json['GSTnumber'],
      emailID: json['emailID'],
      phonenumber: json['phonenumber'],
      StreetAddress1: json['StreetAddress1'],
      StreetAddress2: json['StreetAddress2'],
      AreaCity: json['AreaCity'],
      state: json['state'],
      postalCode: json['postalCode']);


}
