import 'package:flutter/material.dart';
import 'package:flutterapp/pages/location__choose.dart';
import 'pages/home.dart';
import 'pages/location__choose.dart';
import 'pages/loading.dart';
void main()=>runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=>loading(),
    '/home':(context)=>Home(),
    '/location':(context)=>chooselocation()
  },
));