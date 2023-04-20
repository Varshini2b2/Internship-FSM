import 'package:flutter/material.dart';

class experiiii extends StatelessWidget {
  const experiiii({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
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
    );
  }
}
