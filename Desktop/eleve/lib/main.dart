import 'package:eleve/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:eleve/screens/login.dart';
import 'package:eleve/screens/animal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Animal(),
      
     
    );
  }
}
