import 'package:flutter/material.dart';
import 'package:flutterapp0/screen/autheniticate/signIn.dart';
import 'package:flutterapp0/screen/home/home.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp0/Models/usermodel.dart';
import 'package:flutterapp0/screen/autheniticate/shifts.dart';
class Authenitica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user=Provider.of<User>(context);
    if(user==null)
    {
        return shifts();
    }
    else
    {
      return Home();
    }
  }
}