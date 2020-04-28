import 'package:flutter/material.dart';
import 'package:flutterapp0/screen/autheniticate/autheniticate.dart';
import 'package:flutterapp0/screen/home/wrapper.dart';

import 'package:flutterapp0/services/authe.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp0/Models/usermodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
          value: Autheservice().user,
          child: MaterialApp(
        home: Authenitica(),
      ),
    );
  }
  }