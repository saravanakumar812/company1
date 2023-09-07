import 'package:fetchmap/Map.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FetchMap(),
    );
  }
}

class FetchMap extends StatefulWidget {
  const FetchMap({super.key});

  @override
  State<FetchMap> createState() => _FetchMapState();
}

class _FetchMapState extends State<FetchMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 300,
            width: 340,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(30)),
            child: Container(
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 130),
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(
                          child: Text(
                        "FLAG",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, right: 80),
                        child: Text(
                          "COUNTRY NAME : ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Capital : ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: Text(
                              "Official Language : ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Population : ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 128,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 130,
                              height: 40,
                              margin: EdgeInsets.only(left: 30),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: Size(115, 40),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.black, // your color here
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  primary: Colors.black,
                                ),
                                onPressed: () {
                                  print("ok");
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Text(
                                  "Show in map",
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
