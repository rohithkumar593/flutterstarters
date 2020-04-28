import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';



class Cardread extends StatelessWidget {
  final quotes quote;
  final Function delete;
  Cardread({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16,0),
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(quote.text,
                style: TextStyle(
                    fontSize: 26,
                    color:Colors.grey[900]
                ),),
              SizedBox(height: 10,),
              Text(quote.quote,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16
                ),),
              SizedBox(height: 10,),
              FlatButton.icon(onPressed: (){
                delete();
              }, icon: Icon(Icons.delete), label: Text("Delete Icon"))
            ],
          ),
        )
    );
  }
}






