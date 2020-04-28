import "package:flutter/material.dart";
import 'middlefile.dart';
import 'topfile.dart';
import 'bottomfile.dart';
void main()
{
  runApp(RohithApp());
}
class RohithApp extends StatelessWidget {


  Widget get toparea=> Container(
      height: 100,
      color:Colors.green
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Column(

          children: <Widget>[
           toparea,
            Expanded(child: Row(
              children: <Widget>[middlearea(),middleareas()],
            )),
            bottomarea()

            ],
            )

        )
      );

  }
}
