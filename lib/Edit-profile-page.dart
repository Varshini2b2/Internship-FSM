import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:aanandi/side_navigation/sidenavi.dart';

import 'main-page.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final controllerFirstname = TextEditingController();
  final controllerLastname = TextEditingController();
  final controllerOrganizationname = TextEditingController();
  final controllerDesignation = TextEditingController();
  final controllerGSTnumber = TextEditingController();
  final controllerEmailID = TextEditingController();
  final controllerPhonenumber = TextEditingController();
  final controllerStreetAddress1 = TextEditingController();
  final controllerStreetAddress2 = TextEditingController();
  final controllerAreaCity = TextEditingController();
  final controllerState = TextEditingController();
  final controllerPostalCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
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

        body: Row(
            children: [
              sidenavi(),
              Flexible(flex: 2,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,child: Container(
                          padding: EdgeInsets.fromLTRB(57, 25, 57, 10),
                          margin: EdgeInsets.fromLTRB(0, 75, 25, 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)
                          ),
                          child: Column(
                            children: [
                              Flexible(flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      'Profile',
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                  )
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                  // color: Colors.white,
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    'Add information about yourself',
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontFamily: verdana
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        // width: 500,
                        //height: 100,
                      ), ),
                      Flexible(
                          flex: 4,
                          fit: FlexFit.tight,child: Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)
                          ),
                          alignment: Alignment.center,
                          child : Column(
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,child:Container(
                                  width: 500,
                                  alignment: Alignment.topCenter,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.topLeft,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            //border: Border.all(color: Colors.grey)
                                          ),
                                          child: Text(
                                            'Personal details :',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )
                                      ),
                                      Container(
                                        height: 30,
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        alignment: Alignment.center,
                                        child: TextField(
                                          controller: controllerFirstname,
                                          decoration: InputDecoration(
                                            labelText: "First name",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        child: TextField(
                                          controller: controllerLastname,
                                          decoration: InputDecoration(
                                            labelText: "Last name",
                                            // labelText: "First name",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Organization details :',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )
                                      ),
                                      Container(
                                        height: 30,
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        child: TextField(
                                          controller: controllerOrganizationname,
                                          decoration: InputDecoration(
                                            labelText: "Organization name",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        child: TextField(
                                          controller: controllerDesignation,
                                          decoration: InputDecoration(
                                            labelText: "Designation",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        child: TextField(
                                          controller: controllerGSTnumber,
                                          decoration: InputDecoration(
                                            labelText: "GST number",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                          child: Text(
                                            'Contact details :',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )
                                      ),
                                      Container(
                                        height: 30,
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        child: TextField(
                                          controller: controllerEmailID,
                                          decoration: InputDecoration(
                                            labelText: "Email ID",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        child: TextField(
                                          controller: controllerPhonenumber,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            labelText: "Phone number",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                          child: Text(
                                            'Delivery Address details :',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )
                                      ),
                                      Container(
                                        height: 30,
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        child: TextField(
                                          controller: controllerStreetAddress1,
                                          decoration: InputDecoration(
                                            labelText: "Street Address 1",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        child: TextField(
                                          controller: controllerStreetAddress2,
                                          decoration: InputDecoration(
                                            labelText: "Street Address 2",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        child: TextField(
                                          controller: controllerAreaCity,
                                          decoration: InputDecoration(
                                            labelText: "Area/City",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        child: TextField(
                                          controller: controllerState,
                                          decoration: InputDecoration(
                                            labelText: "State",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                        child: TextField(
                                          controller: controllerPostalCode,
                                          decoration: InputDecoration(
                                            labelText: "Postal Code",
                                            labelStyle : TextStyle(
                                                fontSize: 15,
                                                color: Colors.black
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: ElevatedButton(
                                          child: Text('Save', style: TextStyle(color: Colors.white),),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.purple.shade700,
                                          ),
                                          onPressed: () {
                                            final user = User(
                                              firstname: controllerFirstname.text,
                                              lastname: controllerLastname.text,
                                              Organizationname: controllerOrganizationname.text,
                                              Designation: controllerDesignation.text,
                                              GSTnumber: controllerGSTnumber.text,
                                              emailID: controllerEmailID.text,
                                              phonenumber: controllerPhonenumber.text,
                                              StreetAddress1: controllerStreetAddress1.text,
                                              StreetAddress2: controllerStreetAddress2.text,
                                              AreaCity: controllerAreaCity.text,
                                              state: controllerState.text,
                                              postalCode: controllerPostalCode.text,
                                            );
                                            createUser(user);
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                // width: 500,
                                //height: 100,
                              ), ),
                            ],
                          )
                      )
                      )
                    ],
                  )
              )
            ]
        )
    );
  }

  Stream<List<User>> readUsers() => FirebaseFirestore.instance.collection('users')
      .snapshots().map((snapshot) => snapshot.docs.map((doc) => User.fromJson(doc.data()) ).toList());


  Future createUser(User user) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    user.id = docUser.id;

    final json = user.toJson();
    await docUser.set(json);
  }
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



