import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp0/services/authe.dart';
import 'register.dart';
import 'signIn.dart';
class shifts extends StatefulWidget {
  @override
  _shiftsState createState() => _shiftsState();
}

class _shiftsState extends State<shifts> {
  bool showSignIn=true;

  void toggle()
  {
    setState(() {
      showSignIn=!showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    
      if(showSignIn){
         return signIn(toggle: toggle);
        }
        else
        {
              return register(toggle:toggle);
        }
      
  }
}