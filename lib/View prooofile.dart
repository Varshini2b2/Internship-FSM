
import 'package:aanandi/Edit-profile-page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:aanandi/side_navigation/sidenavi.dart';

class viiii extends StatefulWidget {
  const viiii({Key? key}) : super(key: key);

  @override
  State<viiii> createState() => _viiiiState();
}

class _viiiiState extends State<viiii> {
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
        body:       Row(
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
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                                  child: Text(
                                                    'Delivery Address details :',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  )
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
}
