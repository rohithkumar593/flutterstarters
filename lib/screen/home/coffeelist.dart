import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp0/Models/Brews.dart';
import 'CoffeeTile.dart';

class coffeelist extends StatefulWidget {
  @override
  _coffeelistState createState() => _coffeelistState();
}

class _coffeelistState extends State<coffeelist> {
  @override
  Widget build(BuildContext context) {
    final coffee=Provider.of<List<brews>>(context);
    return ListView.builder(
      itemCount: coffee.length,
      itemBuilder: (context,index){
        return CoffeeTile(coffee:coffee[index]);
      },
    );
  }
}