import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutterapp/timeservices.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  String time="loading";
  void fun() async
  {
     WorldTime inst=  WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg');

     await inst.gettime();
     setState(() {
      Navigator.pushReplacementNamed(context, '/home',arguments: {
        "location":inst.location,
        "flag":inst.flag,
        "time":inst.time,
        "isDayTime":inst.isdaytime
      });
     });
  }
  @override
  void initState(){
    super.initState();
   fun();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
          child: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 75,
        ),
      )),
    );

  }
}
