import 'package:flutter/material.dart';
import 'package:flutterapp0/bottomstackfile.dart';
import 'package:flutterapp0/main2.dart';
import 'package:flutterapp0/stackimageside.dart';

void main()=>runApp(
  MaterialApp(
    home: Home(),
  )
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
     return Scaffold(
            body: Stack(
          children: <Widget>[
            stackImage(size),
           bottomstackfile(size)
          ],
       ),
     );
  }
}