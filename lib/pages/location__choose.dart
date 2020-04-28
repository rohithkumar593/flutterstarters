
import 'package:flutter/material.dart';
import 'cardpackage.dart';
import 'loading.dart';
import 'package:flutterapp/timeservices.dart';


class chooselocation extends StatefulWidget {
  @override
  _chooselocationState createState() => _chooselocationState();
}
class _chooselocationState extends State<chooselocation> {
  List<WorldTime> locations=[
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),
    WorldTime(url: 'Europe/London',location: 'London',flag:'maneesh.jpg'),
    WorldTime(url: 'Europe/Berlin',location: 'Athens',flag: 'mokshith.jpg'),
    WorldTime(url: 'Africa/Nairobi',location: 'Nairobi',flag: 'nature.jpg'),

  ];
  void updatetime(index) async
  {
   WorldTime locationtosend=locations[index];
   await locationtosend.gettime();
   //navigate to home screen or loading screen wherever u need to update in the home screen
    Navigator.pop(context,{
      "location":locationtosend.location,
      "flag":locationtosend.flag,
      "time":locationtosend.time,
      "isDayTime":locationtosend.isdaytime
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Rohith Kumar" ),
        centerTitle: true,
        elevation: 0,
      ),
      body:ListView.builder(
          itemCount:locations.length,
          itemBuilder: (context,index){
            return Card(
             child: ListTile(
               title: Text(locations[index].location),
               leading: CircleAvatar(
                 backgroundImage:new AssetImage('assets/${locations[index].flag}'),
               ),
              onTap: ()
              {
                updatetime(index);
              }
             ),

            );
          })
    );
  }
}
