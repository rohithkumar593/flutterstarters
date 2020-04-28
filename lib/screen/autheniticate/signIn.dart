import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp0/services/authe.dart';
import 'package:flutterapp0/style/textdeco.dart';
import 'package:flutterapp0/style/loading.dart';
class signIn extends StatefulWidget {
  final Function toggle;
  signIn({this.toggle});
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {

final Autheservice _auth=Autheservice();
  String email="";
  String password="";
   String error="";
   bool loading=false;
   final _keyform=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return loading?Loading():Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text("Sign in to drink Coffee"),
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
         
            onPressed: (){
              setState(() {
                 widget.toggle();
              });
            },
             icon:Icon(Icons.person),
              label: Text("Register"),

            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical:40,horizontal:40),
        child: Form(
              key: _keyform,
                child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputdecorate.copyWith(hintText:"Email"),
                    validator: (val)=>val.isEmpty?"Enter an e-mail":null,
                onChanged: (val){
                  setState(() {
                    email=val;
                  });
                },
              ),
              SizedBox(
                height:20,
              ),
              TextFormField(
                  decoration: inputdecorate.copyWith(hintText:"Password"),
                    validator: (val)=>val.length<6?'Password is too short':null,
                  onChanged: (val){
                        setState(() {
                          password=val;
                        });
                  },
                  obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.blueGrey[400],
                child: Text("Sign in"),
                onPressed: () async{
                          if(_keyform.currentState.validate()) {
                            setState(() {
                              loading=true;
                            });
                             dynamic result=await _auth.signInEmailandPassword(email, password);
                             if(result==null)
                             {
                               
                               setState(() {
                                 loading=false;
                                 error="Provide correct mail id and password";
                                 
                               });
                             }
                          
                          
                        }
                      
                      
                }
                ),
                SizedBox(height:20),
                Text(
                  error,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16
                  ),
                )



            ],
          ),
        ),
      )   
    );
  }
}