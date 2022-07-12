import 'dart:ui';

import 'package:flutter/material.dart';

class Animal extends StatefulWidget {
  Animal({Key? key}) : super(key: key);

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      height: 250.0,
                      width: double.infinity,
                      color: Colors.blue),
                  Positioned(
                      bottom: 50.0,
                      right: 100.0,
                      child: Container(
                        height: 400.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                            color: Colors.lightBlue.withOpacity(0.5)),
                      )),
                  Positioned(
                      bottom: 100.0,
                      left: 150.0,
                      child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                            color: Colors.lightBlue.withOpacity(0.5)),
                      )),
                  Column(
                    children: <Widget>[
                      SizedBox(width: 15.0),
                      Container(
                        alignment: Alignment.topLeft,
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0)),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
