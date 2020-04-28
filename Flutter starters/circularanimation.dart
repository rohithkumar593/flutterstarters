import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.grey.shade700
      ),
    )
  );

}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _cards;
   FixedExtentScrollController _controller;
   List<Widget> widgets;

  @override
  void initState(){
    super.initState();
    _controller=  FixedExtentScrollController();
    _cards=["Rohith","Maneesh","Mokshith","Surya","Taha","Komal","Bipin","Noor","Mohan","Rohith","Maneesh","Mokshith","Surya","Taha","Komal","Bipin","Noor","Mohan",];
    
  }

  @override
  Widget build(BuildContext context) {
    widgets=[
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      
  Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      
  Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      
  Container(
        color: Colors.grey.shade500,
        child: ListTile(
        
          leading: Text("HI"),
          title: Text("Rohith Kumar"),
          trailing: Text("Sir"),
        ),
      ),
      

    ];
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: Text(
          "Contacts List"
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black87,
        child: ListWheelScrollView(
          itemExtent: 80,
         diameterRatio: 2.5,
         offAxisFraction: -0.5,
          physics: FixedExtentScrollPhysics(),
          controller: _controller,
          children:widgets
    ),
      ));
  }
   
}