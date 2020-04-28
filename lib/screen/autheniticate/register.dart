import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp0/services/authe.dart';
import 'package:flutterapp0/style/textdeco.dart';
import 'package:flutterapp0/style/loading.dart';
class register extends StatefulWidget {
  final Function toggle;
  register({this.toggle});
  @override
  
  _registerState createState() => _registerState();
}


class _registerState extends State<register> {
final _keyform=GlobalKey<FormState>();
final Autheservice _auth=Autheservice();
  String email="";
  String password="";
  String error="";
  bool loading=false;
  @override
  Widget build(BuildContext context) {
    return loading? Loading():Scaffold(
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
              label: Text("Sign in"))
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
                child: Text("Register"),
                onPressed: () async{
                     setState(() {
                       loading=true;
                     });
                     dynamic result=await _auth.registerwithEmailandPassword(email, password);
                     if(result==null)
                     {
                       setState(() {
                         loading=false;
                         error="Enter a valid email";
                       });
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