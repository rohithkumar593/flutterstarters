import 'package:flutter/material.dart';
import 'package:flutterapp0/Models/Brews.dart';
class CoffeeTile extends StatelessWidget {
  final brews coffee;
  CoffeeTile({this.coffee});
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: EdgeInsets.only(top:8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 8, 8,0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.brown[coffee.strength],
          ),
          title: Text(coffee.name),
          subtitle: Text("takes ${coffee.sugars} sugars"),
        ),
      ),
    );
  }
}