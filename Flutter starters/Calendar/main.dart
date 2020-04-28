import 'package:flutter/material.dart';
import 'package:flutterapp/calendar.dart';

void main()=>runApp(
  MaterialApp(
    home: MyApp(),
  )
);
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(53,72, 88, 1),
      
     body:  SafeArea(child: Calendar()),
    );
  }
}