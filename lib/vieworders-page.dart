import 'package:aanandi/side_navigation/sidenavi-2.dart';
import 'package:flutter/material.dart';
import 'package:aanandi/side_navigation/sidenavi.dart';
import 'package:aanandi/side_navigation/sidedrawer.dart';
import 'package:im_stepper/stepper.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


class vieworderspage extends StatelessWidget {
  vieworderspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
              Container(
                  width: w * 0.15,
                child: sidenavi2((var index){
                  selectedIndex = index;
                }),
              ),
              Flexible(flex: 3,
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
                            fit: FlexFit.tight,
                            child: Container(
                            padding: EdgeInsets.fromLTRB(80, 25, 80, 120),
                            //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade50,
                                border: Border.all(color: Colors.grey)
                            ),
                            alignment: Alignment.center,
                              child : Column(
                              children: [
                                Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child:Column(
                                    children: [
                                      //The top buttons
                                      // Row(
                                      //   children: [
                                      //     OutlinedButton(
                                      //       style: OutlinedButton.styleFrom(
                                      //         minimumSize: Size(100, 50),
                                      //         textStyle: TextStyle(fontSize: 15),
                                      //         primary: Colors.grey.shade700,
                                      //         side: BorderSide(width: 0,color: Colors.transparent),
                                      //       ),
                                      //       child: Text(
                                      //         'ALL ORDERS',
                                      //       ),
                                      //       onPressed: (){},
                                      //     ),
                                      //     OutlinedButton(
                                      //       style: OutlinedButton.styleFrom(
                                      //         minimumSize: Size(100, 50),
                                      //         textStyle: TextStyle(fontSize: 15),
                                      //         primary: Colors.green,
                                      //         side: BorderSide(width: 0,color: Colors.transparent),
                                      //       ),
                                      //       child: Text(
                                      //         'ACCEPTED ORDERS',
                                      //       ),
                                      //       onPressed: (){},
                                      //     ),
                                      //     OutlinedButton(
                                      //       style: OutlinedButton.styleFrom(
                                      //         minimumSize: Size(100, 50),
                                      //         textStyle: TextStyle(fontSize: 15),
                                      //         primary: Colors.redAccent,
                                      //         side: BorderSide(width: 0,color: Colors.transparent),
                                      //       ),
                                      //       child: Text(
                                      //         'REJECTED ORDERS',
                                      //       ),
                                      //       onPressed: (){},
                                      //     ),
                                      //     OutlinedButton(
                                      //       style: OutlinedButton.styleFrom(
                                      //         minimumSize: Size(100, 50),
                                      //         textStyle: TextStyle(fontSize: 15),
                                      //         primary: Colors.indigoAccent,
                                      //         side: BorderSide(width: 0,color: Colors.transparent),
                                      //       ),
                                      //       child: Text(
                                      //         'COMPLETED ORDERS',
                                      //       ),
                                      //       onPressed: (){},
                                      //     ),
                                      //   ],
                                      // ),
                                      // the orders horizontal scroll part
                                      Flexible(
                                        flex: 4,
                                        fit: FlexFit.tight,
                                        child: Column(
                                          children: [
                                            //SCORLLABLE DETAILS OF ORDERS
                                            Flexible(
                                              flex: 1,
                                              fit: FlexFit.tight,
                                              child: Container(
                                                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                                                  //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(color: Colors.transparent),
                                                  ),
                                                  alignment: Alignment.topLeft,
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 2,
                                                              fit: FlexFit.tight,
                                                              child: Container(
                                                                color: Colors.grey.shade50,
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Text('Order ID:',style: TextStyle(fontSize: 25),),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                      alignment: Alignment.topLeft,
                                                                      child: Text('Material of the work:',style: TextStyle(fontSize: 14),),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                      alignment: Alignment.topLeft,
                                                                      child: Text('Quantity placed:',style: TextStyle(fontSize: 14),),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                      alignment: Alignment.topLeft,
                                                                      child: Text('Welding process:',style: TextStyle(fontSize: 14),),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                      alignment: Alignment.topLeft,
                                                                      child: Text('Volume of the work:',style: TextStyle(fontSize: 14),),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                      alignment: Alignment.topLeft,
                                                                      child: Text('Additional remarks:',style: TextStyle(fontSize: 14),),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              flex: 1,
                                                              fit: FlexFit.tight,
                                                              child: Container(
                                                               height: 200,
                                                                alignment: Alignment.topCenter,
                                                                decoration: BoxDecoration(
                                                                  color: Colors.white,
                                                                  border: Border.all(color: Colors.orange),),
                                                                child: Container(
                                                                  //margin: EdgeInsets.fromLTRB(100, 0 , 100, 0),
                                                                  child: Column(
                                                                    children: [
                                                                      Container(
                                                                        alignment: Alignment.topCenter,
                                                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                                        child: Text('Downloadables',style: TextStyle(fontSize: 25),),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(0, 10 , 0, 0),
                                                                        alignment: Alignment.topCenter,
                                                                        child: Text('Offline programmable files',style: TextStyle(fontSize: 14),),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                        alignment: Alignment.topCenter,
                                                                        child: Text('2D drawing',style: TextStyle(fontSize: 14),),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                        alignment: Alignment.topCenter,
                                                                        child: Text('CAD file',style: TextStyle(fontSize: 14),),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                                        alignment: Alignment.topCenter,
                                                                        child: Text('Simulation file',style: TextStyle(fontSize: 14),),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
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

                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Flexible(
                                              flex: 1,
                                              fit: FlexFit.tight,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    alignment: Alignment.topLeft,
                                                    child: Text('Delivery Address:', style: TextStyle(fontSize: 20),),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            Flexible(
                                              flex: 1,
                                              fit: FlexFit.tight,
                                              child: Container(
                                                  height: 60,
                                                  width: 150,
                                                  //color: Colors.amber,
                                                  child: Column(
                                                    children: [
                                                      StepProgressIndicator(
                                                        totalSteps: 4,
                                                        currentStep: 2,
                                                        size: 36,
                                                        selectedColor: Colors.orange,
                                                        unselectedColor: Colors.grey.shade200,
                                                        customStep: (index, color, _) => color == Colors.orange
                                                            ? Container(
                                                                color: color,
                                                                child: Icon(
                                                                  Icons.check,
                                                                  color: Colors.white,
                                                                ),
                                                              )
                                                            : Container(
                                                                color: color,
                                                                child: Icon(
                                                                  Icons.remove,
                                                                ),
                                                              ),
                                                      ),
                                                      Row(
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                                              alignment: Alignment.topLeft,
                                                              child: Text('Order Placed', style: TextStyle(fontSize: 15),),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                                              alignment: Alignment.topLeft,
                                                              child: Text('Reviewed', style: TextStyle(fontSize: 15),),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                                              alignment: Alignment.topLeft,
                                                              child: Text('Completed', style: TextStyle(fontSize: 15),),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                                              alignment: Alignment.topLeft,
                                                              child: Text('Delivered', style: TextStyle(fontSize: 15),),
                                                            ),

                                                          ],
                                                        ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Expanded(
                                //   child: Container(
                                //       color: Colors.white,
                                //       child: Column(
                                //         children: [
                                //
                                //         ],
                                //       ),
                                //     ),
                                // ),
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

