import 'package:aanandi/side_navigation/sidenavi-2.dart';
import 'package:flutter/material.dart';
import 'package:aanandi/side_navigation/naviBar.dart';
import 'package:aanandi/side_navigation/sidenavi.dart';
import 'package:aanandi/side_navigation/sidedrawer.dart';
import 'package:im_stepper/stepper.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class vieworder2spage extends StatelessWidget {
  vieworder2spage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    var selectedIndex = 0;
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.blueGrey.shade50,
        drawer: w<900?naviBar():null,
        appBar: AppBar(
          title: Text(
            " ",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          //leading: BackButton(),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Row(children: [
          Container(
            width: w < 910 ? w * 0 : w * 0.2,
            child: sidenavi2((var index) {
              selectedIndex = index;
            }),
          ),
          Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(57, 25, 57, 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset('thumbnail_image.png'))),
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
                      ),
                ),
                Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Container(
                        padding: h>700?EdgeInsets.fromLTRB(12.5, 20, 20, 20):null,
                        //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        alignment: Alignment.center,
                        child: LayoutBuilder(
                          builder: (context, constraints) => Column(
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.transparent),
                                  ),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      w > 650?
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              //height: constraints.maxHeight * 0.30,
                                              //width: constraints.maxWidth * 0.25,
                                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                              color: Colors.grey.shade50,
                                              ///Order ID and details
                                              child: Column(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Order ID:',
                                                      style: TextStyle(
                                                        fontSize:
                                                            w > 700 ? 26 : 22,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Material of the work:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Quantity placed:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 5, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Welding process:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 5, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Volume of the work:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 5, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Additional remarks:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // Expanded(child: Container()),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              height: h>535?175:150,
                                              width: 175,
                                              alignment: Alignment.topCenter,
                                              margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.orange),
                                              ),
                                              child: Container(
                                                //height: constraints.maxHeight * 0.30,
                                                //width: constraints.maxWidth * 0.25,
                                                //margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 5, 0, 0),
                                                      child: Text(
                                                        'Downloadables',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 26
                                                                : 22),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 10, 0, 0),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                        'Offline programmable files',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 5, 0, 0),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                        '2D drawing',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 5, 0, 0),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                        'CAD file',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 5, 0, 0),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                        'Simulation file',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ):
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              //height: h * 0.05,
                                              //width: constraints.maxWidth * 0.25,,
                                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                              color: Colors.grey.shade50,
                                              ///Order ID and details
                                              child: Column(
                                                children: [
                                                  Container(
                                                    alignment:
                                                    Alignment.topLeft,
                                                    child: Text(
                                                      'Order ID:',
                                                      style: TextStyle(
                                                        fontSize:
                                                        w > 700 ? 26 : 22,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                    alignment:
                                                    Alignment.topLeft,
                                                    child: Text(
                                                      'Material of the work:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                    alignment:
                                                    Alignment.topLeft,
                                                    child: Text(
                                                      'Quantity placed:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 5, 0, 0),
                                                    alignment:
                                                    Alignment.topLeft,
                                                    child: Text(
                                                      'Welding process:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 5, 0, 0),
                                                    alignment:
                                                    Alignment.topLeft,
                                                    child: Text(
                                                      'Volume of the work:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                    alignment:
                                                    Alignment.topLeft,
                                                    child: Text(
                                                      'Additional remarks:',
                                                      style: TextStyle(
                                                          fontSize: w > 700
                                                              ? 14
                                                              : 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // Expanded(child: Container()),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              height: h>535?175:150,
                                              width: 175,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
                                              decoration: BoxDecoration(
                                                color: Colors.cyan,
                                                border: Border.all(
                                                    color: Colors.orange),
                                              ),
                                              child: Container(
                                                //height: h * 0.20,
                                                //width: constraints.maxWidth * 0.25,
                                                //margin: EdgeInsets.fromLTRB(0, 5 , 0, 0),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      alignment:
                                                      Alignment.topCenter,
                                                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                      child: Text(
                                                        'Downloadables',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 26
                                                                : 22),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                      alignment:
                                                      Alignment.topCenter,
                                                      child: Text(
                                                        'Offline programmable files',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                      EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                      alignment:
                                                      Alignment.topCenter,
                                                      child: Text(
                                                        '2D drawing',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                      EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                      alignment:
                                                      Alignment.topCenter,
                                                      child: Text(
                                                        'CAD file',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                      EdgeInsets.fromLTRB(0, 5, 0, 0),
                                                      alignment:
                                                      Alignment.topCenter,
                                                      child: Text(
                                                        'Simulation file',
                                                        style: TextStyle(
                                                            fontSize: w > 700
                                                                ? 14
                                                                : 11),
                                                      ),
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
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                           Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Delivery Address:',
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                              ],
                                            ),


                                          ///Step Progress Indicator
                                          // Flexible(
                                          //   flex: 1,
                                          //   fit: FlexFit.tight,
                                          //   child: Container(
                                          //       height: 60,
                                          //       width: 150,
                                          //       //color: Colors.amber,
                                          //       child: Column(
                                          //         children: [
                                          //           StepProgressIndicator(
                                          //             totalSteps: 4,
                                          //             currentStep: 2,
                                          //             size: 36,
                                          //             selectedColor: Colors.orange,
                                          //             unselectedColor: Colors.grey.shade200,
                                          //             customStep: (index, color, _) => color == Colors.orange
                                          //                 ? Container(
                                          //                   color: color,
                                          //                   child: Icon(
                                          //                 Icons.check,
                                          //                 color: Colors.white,
                                          //               ),
                                          //             )
                                          //                 : Container(
                                          //                 color: color,
                                          //                   child: Icon(
                                          //                 Icons.remove,
                                          //               ),
                                          //             ),
                                          //           ),
                                          //           Row(
                                          //             children: [
                                          //               Container(
                                          //                 margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                          //                 alignment: Alignment.topLeft,
                                          //                 child: Text('Order Placed', style: TextStyle(fontSize: 15),),
                                          //               ),
                                          //               Container(
                                          //                 margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                          //                 alignment: Alignment.topLeft,
                                          //                 child: Text('Reviewed', style: TextStyle(fontSize: 15),),
                                          //               ),
                                          //               Container(
                                          //                 margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                          //                 alignment: Alignment.topLeft,
                                          //                 child: Text('Completed', style: TextStyle(fontSize: 15),),
                                          //               ),
                                          //               Container(
                                          //                 margin: EdgeInsets.fromLTRB(1, 0, 35, 0),
                                          //                 alignment: Alignment.topLeft,
                                          //                 child: Text('Delivered', style: TextStyle(fontSize: 15),),
                                          //               ),
                                          //
                                          //             ],
                                          //           ),
                                          //         ],
                                          //       )
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )))
              ]))
        ]));
  }
}
