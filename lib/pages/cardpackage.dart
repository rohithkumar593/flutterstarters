import 'package:flutter/material.dart';
import 'package:flutterapp/pages/location__choose.dart';

class displaycard extends StatelessWidget {

  displaycard(this.name,this.add);

  String name;

  final Function add;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Center(child:Text(name,
            style: TextStyle(
              fontSize: 24,
              backgroundColor: Colors.grey[250]
            ),),),

          ],
    ),
        ),
        onTap: (){
            this.add();
    },));
  }
}
