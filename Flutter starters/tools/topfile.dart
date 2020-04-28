import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class middleareas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.blue,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:List<Widget>.generate(4, (generator)=>
        Container(
          width: 50,
          height: 50,
          color:Colors.red
        )
        ),
      )
    );
  }
  }