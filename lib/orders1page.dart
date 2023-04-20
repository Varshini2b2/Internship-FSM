import 'package:aanandi/side_navigation/sidenavi-2.dart';
import 'package:aanandi/vieworders-page.dart';
import 'package:flutter/material.dart';
import 'package:aanandi/side_navigation/sidenavi.dart';
import 'package:aanandi/side_navigation/sidedrawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class orders1page extends StatelessWidget {
  orders1page({Key? key}) : super(key: key);

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
                            fit: FlexFit.tight,child: Container(
                            padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
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
                                            //SCORLLABLE DETAILS OF ORDERS
                                            Expanded(
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                                                //margin: EdgeInsets.fromLTRB(0, 0, 25, 10),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.transparent),
                                                ),
                                                alignment: Alignment.topLeft,
                                                child: Scrollbar(
                                                  controller: ScrollController(),
                                                  child: ListView(
                                                    scrollDirection: Axis.vertical,
                                                    children: [
                                                      Container(
                                                        height: 150,
                                                          margin: EdgeInsets.all(5),
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              border: Border.all(color: Colors.grey),),
                                                          child: // first scroll bar
                                                          Column(
                                                            children: [
                                                              Container(
                                                                padding: EdgeInsets.all(5),
                                                                decoration: BoxDecoration(
                                                                  color: Colors.blueGrey.shade50,
                                                                  //border: Border.all(color: Colors.grey),
                                                                    ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('ORDER PLACED',
                                                                                style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('25 August 2022'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('MATERIAL OF WORK',
                                                                                style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Steel'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text(
                                                                                'WELD MATERIAL',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Aluminium'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Container(
                                                                        alignment: Alignment.topRight,
                                                                        child: Column(
                                                                          children: [
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text(
                                                                                'ORDER ID',
                                                                                style: TextStyle(fontSize: 12),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text('19356'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              // More details of the order
                                                              Row(
                                                                children: [
                                                                  Flexible(
                                                                    flex: 1,
                                                                    fit: FlexFit.tight,
                                                                    child: Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            alignment: Alignment.topLeft,
                                                                            padding: EdgeInsets.all(5),
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Arriving on 30 February 2023',
                                                                              style: TextStyle(
                                                                                fontSize: 18,
                                                                                color: Colors.green.shade800,),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Type of Weld: MIG welding,',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Quantity placed: 20',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Volume of the work: 260mm X 250mm X 300mm',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Additional Remarks: NONE',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  // elevated view more button
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                          child: ElevatedButton(
                                                                            child: Text('View details'),
                                                                            style: ElevatedButton.styleFrom(
                                                                              primary: Colors.yellow,
                                                                            ),
                                                                            onPressed: () {
                                                                              Get.to(vieworderspage());
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ],
                                                          )

                                                        ),
                                                      Container(
                                                          height: 150,
                                                          margin: EdgeInsets.all(5),
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            border: Border.all(color: Colors.grey),),
                                                          child: // first scroll bar
                                                          Column(
                                                            children: [
                                                              Container(
                                                                padding: EdgeInsets.all(5),
                                                                decoration: BoxDecoration(
                                                                  color: Colors.blueGrey.shade50,
                                                                  //border: Border.all(color: Colors.grey),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('ORDER PLACED',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('25 August 2022'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('MATERIAL OF WORK',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Steel'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text(
                                                                              'WELD MATERIAL',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Aluminium'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Container(
                                                                        alignment: Alignment.topRight,
                                                                        child: Column(
                                                                          children: [
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text(
                                                                                'ORDER ID',
                                                                                style: TextStyle(fontSize: 12),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text('19356'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              // More details of the order
                                                              Row(
                                                                children: [
                                                                  Flexible(
                                                                    flex: 1,
                                                                    fit: FlexFit.tight,
                                                                    child: Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            alignment: Alignment.topLeft,
                                                                            padding: EdgeInsets.all(5),
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Accepted',
                                                                              style: TextStyle(
                                                                                fontSize: 18,
                                                                                color: Colors.green.shade800,),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Type of Weld: MIG welding,',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Quantity placed: 20',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Volume of the work: 260mm X 250mm X 300mm',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Additional Remarks: NONE',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  // elevated view more button
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                          child: ElevatedButton(
                                                                            child: Text('View details'),
                                                                            style: ElevatedButton.styleFrom(
                                                                              primary: Colors.yellow,
                                                                            ),
                                                                            onPressed: () {Get.to(vieworderspage());},
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ],
                                                          )

                                                      ),
                                                      Container(
                                                          height: 150,
                                                          margin: EdgeInsets.all(5),
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            border: Border.all(color: Colors.grey),),
                                                          child: // first scroll bar
                                                          Column(
                                                            children: [
                                                              Container(
                                                                padding: EdgeInsets.all(5),
                                                                decoration: BoxDecoration(
                                                                  color: Colors.blueGrey.shade50,
                                                                  //border: Border.all(color: Colors.grey),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('ORDER PLACED',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('25 August 2022'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('MATERIAL OF WORK',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Steel'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text(
                                                                              'WELD MATERIAL',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Aluminium'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Container(
                                                                        alignment: Alignment.topRight,
                                                                        child: Column(
                                                                          children: [
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text(
                                                                                'ORDER ID',
                                                                                style: TextStyle(fontSize: 12),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text('19356'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              // More details of the order
                                                              Row(
                                                                children: [
                                                                  Flexible(
                                                                    flex: 1,
                                                                    fit: FlexFit.tight,
                                                                    child: Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            alignment: Alignment.topLeft,
                                                                            padding: EdgeInsets.all(5),
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('In Transit',
                                                                              style: TextStyle(
                                                                                fontSize: 18,
                                                                                color: Colors.green.shade800,),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Type of Weld: MIG welding,',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Quantity placed: 20',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Volume of the work: 260mm X 250mm X 300mm',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Additional Remarks: NONE',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  // elevated view more button
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                          child: ElevatedButton(
                                                                            child: Text('View details'),
                                                                            style: ElevatedButton.styleFrom(
                                                                              primary: Colors.yellow,
                                                                            ),
                                                                            onPressed: () {},
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ],
                                                          )

                                                      ),
                                                      Container(
                                                          height: 150,
                                                          margin: EdgeInsets.all(5),
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            border: Border.all(color: Colors.grey),),
                                                          child: // first scroll bar
                                                          Column(
                                                            children: [
                                                              Container(
                                                                padding: EdgeInsets.all(5),
                                                                decoration: BoxDecoration(
                                                                  color: Colors.blueGrey.shade50,
                                                                  //border: Border.all(color: Colors.grey),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('ORDER PLACED',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('25 August 2022'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('MATERIAL OF WORK',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Steel'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text(
                                                                              'WELD MATERIAL',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Aluminium'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Container(
                                                                        alignment: Alignment.topRight,
                                                                        child: Column(
                                                                          children: [
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text(
                                                                                'ORDER ID',
                                                                                style: TextStyle(fontSize: 12),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text('19356'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              // More details of the order
                                                              Row(
                                                                children: [
                                                                  Flexible(
                                                                    flex: 1,
                                                                    fit: FlexFit.tight,
                                                                    child: Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            alignment: Alignment.topLeft,
                                                                            padding: EdgeInsets.all(5),
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Accepted',
                                                                              style: TextStyle(
                                                                                fontSize: 18,
                                                                                color: Colors.green.shade800,),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Type of Weld: MIG welding,',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Quantity placed: 20',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Volume of the work: 260mm X 250mm X 300mm',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Additional Remarks: NONE',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  // elevated view more button
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                          child: ElevatedButton(
                                                                            child: Text('View details'),
                                                                            style: ElevatedButton.styleFrom(
                                                                              primary: Colors.yellow,
                                                                            ),
                                                                            onPressed: () {},
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ],
                                                          )

                                                      ),
                                                      Container(
                                                          height: 150,
                                                          margin: EdgeInsets.all(5),
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            border: Border.all(color: Colors.grey),),
                                                          child: // first scroll bar
                                                          Column(
                                                            children: [
                                                              Container(
                                                                padding: EdgeInsets.all(5),
                                                                decoration: BoxDecoration(
                                                                  color: Colors.blueGrey.shade50,
                                                                  //border: Border.all(color: Colors.grey),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('ORDER PLACED',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('25 August 2022'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('MATERIAL OF WORK',
                                                                              style: TextStyle(fontSize: 12),),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Steel'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text(
                                                                              'WELD MATERIAL',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                            child: Text('Aluminium'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Container(
                                                                        alignment: Alignment.topRight,
                                                                        child: Column(
                                                                          children: [
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text(
                                                                                'ORDER ID',
                                                                                style: TextStyle(fontSize: 12),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(7, 0, 30, 0),
                                                                              child: Text('19356'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              // More details of the order
                                                              Row(
                                                                children: [
                                                                  Flexible(
                                                                    flex: 1,
                                                                    fit: FlexFit.tight,
                                                                    child: Container(
                                                                      alignment: Alignment.topLeft,
                                                                      child: Column(
                                                                        children: [
                                                                          Container(
                                                                            alignment: Alignment.topLeft,
                                                                            padding: EdgeInsets.all(5),
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('In Transit',
                                                                              style: TextStyle(
                                                                                fontSize: 18,
                                                                                color: Colors.green.shade800,),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Type of Weld: MIG welding,',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Quantity placed: 20',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Volume of the work: 260mm X 250mm X 300mm',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                                                                            child: Text('Additional Remarks: NONE',
                                                                                style: TextStyle(
                                                                                  fontSize: 13,)
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  // elevated view more button
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                          child: ElevatedButton(
                                                                            child: Text('View details'),
                                                                            style: ElevatedButton.styleFrom(
                                                                              primary: Colors.yellow,
                                                                            ),
                                                                            onPressed: () {},
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ],
                                                          )

                                                      ),
                                                    ],
                                                  ),
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

