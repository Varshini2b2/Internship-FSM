import 'package:aanandi/side_navigation/sidenavi-2.dart';
import 'package:flutter/material.dart';
import 'package:aanandi/side_navigation/sidenavi.dart';
import 'package:aanandi/side_navigation/sidedrawer.dart';


class orderspage extends StatelessWidget {
  orderspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    var selectedIndex = 0;
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
              // MyHomePage(key: key, title: 'sidenavidrawer',),
              sidenavi2((var index){
                selectedIndex = index;
              }),
              Flexible(flex: 2,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,child: Container(
                          padding: EdgeInsets.fromLTRB(57, 25, 57, 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)
                          ),
                          child: Row(
                            children: [
                              Flexible(flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('thumbnail_image.png')
                                  )
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                  // color: Colors.white,
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    'Add information ',
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
                          //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)
                          ),
                          alignment: Alignment.center,
                          child : Column(
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,child:Column(
                                    children: [
                                      //The top buttons
                                      Row(
                                        children: [
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              minimumSize: Size(100, 50),
                                              textStyle: TextStyle(fontSize: 15),
                                              primary: Colors.grey.shade700,
                                              side: BorderSide(width: 0,color: Colors.transparent),
                                            ),
                                            child: Text(
                                              'ALL ORDERS',
                                            ),
                                            onPressed: (){},
                                          ),
                                          OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                  minimumSize: Size(100, 50),
                                                  textStyle: TextStyle(fontSize: 15),
                                                  primary: Colors.green,
                                                  side: BorderSide(width: 0,color: Colors.transparent),
                                                ),
                                                child: Text(
                                                  'ACCEPTED ORDERS',
                                                ),
                                                onPressed: (){},
                                              ),
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              minimumSize: Size(100, 50),
                                              textStyle: TextStyle(fontSize: 15),
                                              primary: Colors.redAccent,
                                              side: BorderSide(width: 0,color: Colors.transparent),
                                            ),
                                            child: Text(
                                              'REJECTED ORDERS',
                                            ),
                                            onPressed: (){},
                                          ),
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              minimumSize: Size(100, 50),
                                              textStyle: TextStyle(fontSize: 15),
                                              primary: Colors.indigoAccent,
                                              side: BorderSide(width: 0,color: Colors.transparent),
                                            ),
                                            child: Text(
                                              'COMPLETED ORDERS',
                                            ),
                                            onPressed: (){},
                                          ),
                                        ],
                                      ),
                                      // the orders horizontal scroll part
                                      Flexible(
                                        flex: 4,
                                        fit: FlexFit.tight,
                                        child: Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  //border: Border.all(color: Colors.grey),
                                              ),
                                              alignment: Alignment.topLeft,
                                             child: Container(
                                               height: 20,
                                               child: // first scroll bar
                                                   ListView(
                                                       scrollDirection: Axis.horizontal,
                                                       children: [
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                           child: Text('what'),
                                                         ),
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                           child: Text('what'),
                                                         ),
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                           child: Text('what'),
                                                         ),
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                           child: Text('what'),
                                                         ),
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                           child: Text('what'),
                                                         ),
                                                         Container(
                                                           margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                           child: Text('what'),
                                                         ),
                                                       ],
                                                     ),

                                             ),
                                      ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey)
                                              ),
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: 20,
                                                child: // first scroll bar
                                                ListView(
                                                  scrollDirection: Axis.horizontal,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                  ],
                                                ),

                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey)
                                              ),
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: 20,
                                                child: // first scroll bar
                                                ListView(
                                                  scrollDirection: Axis.horizontal,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                  ],
                                                ),

                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.grey)
                                              ),
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: 20,
                                                child: // first scroll bar
                                                ListView(
                                                  scrollDirection: Axis.horizontal,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(7, 0, 250, 0),
                                                      child: Text('what'),
                                                    ),
                                                  ],
                                                ),

                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                      ]

                          )

                      )
                    ],
                  )
              )
                      )
            ]
        )
    )
    ]
    )
    );
  }
}

