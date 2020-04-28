
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(RohithApp());
class RohithApp extends StatefulWidget {
  @override
  _RohithAppState createState() => _RohithAppState();
}

class _RohithAppState extends State<RohithApp> {
  bool isclicked=false;
  Size size;
  var screenwdth,screenheight;
  Duration duration=Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    screenwdth=size.width;
    screenheight=size.height;
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: Stack(
            children: <Widget>[
              menu(context),
              home(context)
            ],
          ),
        ));
  }

  Widget menu(context)
  {
    return Padding(
      padding: const EdgeInsets.only(left:16.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child:Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text( "Home", style: TextStyle( color: Colors.blueGrey,fontSize: 23 )),
                Text( "About", style: TextStyle( color: Colors.blueGrey ,fontSize: 23 )),
                Text( "Events", style: TextStyle( color: Colors.blueGrey,fontSize: 23  )),
                Text( "Contact", style: TextStyle( color: Colors.blueGrey,fontSize: 23  )),
              ] )),
    );
  }

  Widget home(BuildContext context)
  {
    return AnimatedPositioned(
      duration: duration,
      child: Material(
        elevation: 5,
        color:Colors.blueGrey,
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 49, 16, 16),
          child: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children:[
                    InkWell(onTap:(){
                      setState(() {
                        isclicked=true;
                      });
                    },child: Icon(Icons.menu,color: Colors.grey,)),
                    Text("Rohith Kumar",style: TextStyle(fontSize: 24, color: Colors.black),),
                    Icon(Icons.settings,color:Colors.grey)
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}















