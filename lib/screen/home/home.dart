import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp0/Models/Brews.dart';
import 'package:flutterapp0/screen/home/stress_form.dart';
import 'package:flutterapp0/services/authe.dart';
import 'package:flutterapp0/services/Database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'coffeelist.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Autheservice _auth=Autheservice();
  @override
  Widget build(BuildContext context) {
     void _stresspanel(){
      showModalBottomSheet(
        context: context, 
        builder: (context){
          return stressform();
        });
    }
    return StreamProvider<List<brews>>.value(
         value:  databaseservice().coffee,
          child: Scaffold(
        backgroundColor: Colors.brown[300],
          appBar: AppBar(
            title: Text("Coffee"),
            backgroundColor: Colors.brown[700],
            actions: <Widget>[
              FlatButton.icon(
                onPressed: (){
                  setState(() {
                    _stresspanel();
                  });
                },
                 icon: Icon(Icons.settings),
                  label: Text("Stressed?")),
              FlatButton.icon(
                onPressed: () async{
                   await _auth.signout();
                  },
                   icon: Icon(Icons.person), 
                   label: Text("Logout"))
            ],
          ),
          
        body: coffeelist(),
      ),
    );
  }
}