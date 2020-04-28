import 'package:flutter/material.dart';
import 'package:flutterapp0/services/Database.dart';
import 'package:flutterapp0/style/loading.dart';
import 'package:flutterapp0/style/textdeco.dart';
import 'package:flutterapp0/Models/usermodel.dart';
import 'package:provider/provider.dart';

class stressform extends StatefulWidget {
  @override
  _stressformState createState() => _stressformState();
}

class _stressformState extends State<stressform> {
  @override
  final  _formkey=GlobalKey<FormState>();
 
  final List<String> sugars=['0','1','2','3','4','5'];
  String _currentname;
  String _currentsugars;
  int _currentstrength;
  Widget build(BuildContext context) {
     final user=Provider.of<User>(context);
    return StreamBuilder<UserData>(
      stream: databaseservice(uid:user.uid).userdata,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          UserData userData=snapshot.data;
           return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formkey,
            child: Column(
            
              children: [
                Text(
                  "Update your Stress",
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(height:30),
                    TextFormField(
                      initialValue: userData.name,
                      decoration: inputdecorate.copyWith(hintText:"Name"),
                          validator: (val)=>val.isEmpty?"Enter an e-mail":null,
                      onChanged: (val){
                        setState(() {
                          _currentname=val;
                        });
                      },
                    ),
                     SizedBox(height:20),
                     
                     DropdownButtonFormField(
                       decoration: inputdecorate.copyWith(hintText:null),
                       value: _currentsugars??userData.sugars,
                       items: sugars.map((sugar){
                         return DropdownMenuItem(
                           value: sugar,
                           child: Text("$sugar sugars"));
                       }).toList(),
                        onChanged: (val){
                        setState(() {
                          _currentsugars=val;
                        });
                      },
                       ),
                        SizedBox(height:20),
                     //Drop down menu
                     

                     //slider

                      Slider(
                        min:100,
                        max: 900,
                        divisions: 8,
                        value:( _currentstrength??userData.strength).toDouble(),
                        activeColor: Colors.brown[_currentstrength??100],
                        inactiveColor: Colors.brown[_currentstrength??100], 
                        onChanged: (val){
                        setState(() {
                          _currentstrength=val.round();
                        });
                      },
                        ),
                     //end of slider
                    SizedBox(height:25),
                     RaisedButton(
                       child: Text(
                         "Update",
                         style: TextStyle(
                           color: Colors.black
                         ),),
                       color: Colors.grey,
                       onPressed: () async{
                         if(_formkey.currentState.validate()){
                             await databaseservice(uid:user.uid).updatedata(
                               _currentsugars??userData.sugars,
                                _currentname??userData.name,
                                 _currentstrength??userData.strength);}
                        Navigator.pop(context);
                       })


              ],
            
            ),
            
          ),
        );
        }
        else{
          Loading();
        }
       
      }
    );
  }
}