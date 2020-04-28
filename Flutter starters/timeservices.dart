import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isdaytime;// location url for api end point
  WorldTime({this.location,this.flag,this.url});
  Future<void> gettime() async {
    try{
      Response resp = await get ( 'http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode ( resp.body );
      String datetime=data["datetime"];
      String offset=data["utc_offset"].substring(1,3);
      DateTime now=DateTime.parse(datetime);
      now=now.add(Duration(hours:int.parse(offset)));
      isdaytime=now.hour>6 && now.hour<17?true:false;
      time=DateFormat.jm().format(now);

    }
    catch(e){
      print("caughterror $e");
      time="couldnot get time";
    }


  }
}
