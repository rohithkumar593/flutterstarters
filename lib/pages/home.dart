import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  Map data={};

  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty?data:ModalRoute.of(context).settings.arguments;

    String time=data["time"];
    
    return Scaffold(
      backgroundColor: data['isDayTime']?Colors.blue:Colors.indigo,
      body: SafeArea(
        child:Container(
          decoration: BoxDecoration(
            image:  DecorationImage(
                image:AssetImage(data['isDayTime']?'assets/Rohith.jpg':"assets/suryaprakash.jpg",
                ),
            fit: BoxFit.cover)
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120,0,0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(onPressed: () async{
                  dynamic result=await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data={
                      'location':result['location'],
                      'isDayTime':result['isDayTime'],
                      'time':result['time'],
                       'flag':result['flag']
                    };

                  });
                },
                    icon: Icon(Icons.edit_location,
                    color: Colors.white,),
                    label: Text("Edit Location",
                    style: TextStyle(
                      color: Colors.white
                    ),)
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data["location"],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      letterSpacing: 2
                    ),)
                  ],
                ),
                SizedBox(height: 20,),
                Text(data['time'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
                ),)
              ],
            ),
          ),
        ),)
    );
  }
}
