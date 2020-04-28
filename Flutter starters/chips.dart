import 'package:flutter/material.dart';

import 'HomeScreen.dart';
void main()=>runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool  _isselected;
  List<String> _filter;
  List<String> _dynamicchip;
  List<names> _Name;
GlobalKey<ScaffoldState> _key;
  @override
  void initState(){
    super.initState();
    _key=GlobalKey<ScaffoldState>();
    _isselected=false;
    _Name=[const names("Rohith"),
           const  names("Kumar"),
           const  names("Google"),
           const  names("Ceo"),
           const names("nene"),
           const names("choosi"),
           const names("em"),
           const names("sadistav")];
    _filter=<String>[];
    _dynamicchip=["Health","Food","LifeStyle","Sports","Nature","Learn"];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(title:Text("Rohith Kumar")),
      body:Column(
          children: <Widget> [
            SingleChildScrollView(
        scrollDirection: Axis.horizontal,
             child: row(), 
            ),
              Divider(),
              wrap(),
              Divider(),
              dynamicchips(),
              Divider(),
              ActionChips(),
              Divider(),
              InputChips(),
              Divider(),
              Wrap(children:FilterChips.toList()),
              Text("Selected Words ${_filter.join(", ")}"),
              Divider()


          ],
      ),
    );
  
  }
  dynamicchips(){

    return Container(
        
          child: Wrap(
        spacing: 6.0,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: List<Widget>.generate(_dynamicchip.length, (index){
          return Chip(
            labelPadding: EdgeInsets.all(5),
            backgroundColor: Colors.orangeAccent,
            shadowColor: Colors.grey.shade300,
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade50,
              child: Text(_dynamicchip[index][0].toUpperCase()),
            ),
            label:Text(_dynamicchip[index]),
            onDeleted: (){
              setState(() {
                _dynamicchip.remove(_dynamicchip[index]);
              });
            },
            );
        }),
      ),
    );
  }
  wrap(){
     return Wrap(
       spacing: 6.0,
       runSpacing: 10.0,
       alignment: WrapAlignment.center,
        children: <Widget>[
          chip("Rohith", Colors.lightGreen),
          chip("Mansoor", Colors.greenAccent),
          chip("Mokshith", Colors.green),
          chip("Taha", Colors.orangeAccent),
          chip("Taha", Colors.orangeAccent),
          chip("Taha", Colors.orangeAccent),
        ],
      );
  }

  row(){
   return  Row(
        children: <Widget>[
          chipForrow("Rohith", Colors.lightGreen),
            chipForrow("Mansoor", Colors.greenAccent),
              chipForrow("Mokshith", Colors.green),
                chipForrow("Taha", Colors.orangeAccent),
                  chipForrow("Taha", Colors.orangeAccent),
                    chipForrow("Taha", Colors.orangeAccent),
        ],
      );
  }
  Widget ActionChips(){
    return Container(
          margin: EdgeInsets.all(6),
          child: ActionChip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade600,
          child: Icon(
            Icons.call
          ),
        ),
        label: Text("Call"),
        labelPadding: EdgeInsets.all(8),
         onPressed: (){
           setState(() {
             _key.currentState.showSnackBar(
               SnackBar(content: Text("Calling....")
               )
             );
           });
         }
         ),
    );
  }

  Widget chipForrow(String label,Color color){
    return Container(
      margin: EdgeInsets.all(6),
      child: Chip(
        labelPadding: EdgeInsets.all(5),
        label: Text(label,
        style: TextStyle(
          color: Colors.white
        ),),
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade600,
          child: Text("RK"),
        ),
        backgroundColor: color,
        shadowColor: Colors.grey.shade300,
        elevation: 3,
        ),
    );
  }

  Widget chip(String label,Color color){
   return  Chip(
        labelPadding: EdgeInsets.all(5),
        label: Text(label,
        style: TextStyle(
          color: Colors.white
        ),),
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade600,
          child: Text("RK"),
        ),
        backgroundColor: color,
        shadowColor: Colors.grey.shade300,
        elevation: 3,
        );
    
  }
  Widget InputChips(){
    return InputChip(
      padding: EdgeInsets.all(5),
      label: Text(_dynamicchip[0],
      style: TextStyle(
        color: Colors.white
      ),),
      labelPadding: EdgeInsets.all(10),
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade600,
        child: Text(_dynamicchip[0][0].toUpperCase()),
      ),
      selected: _isselected,
      selectedColor: Colors.green,
      onSelected: (bool selected){
          setState(() {
            _isselected=selected;
          });
      },  
      
      );
  }
  Iterable<Widget> get FilterChips sync*{
    for(names namer in _Name){
       yield Padding(
         padding: EdgeInsets.all(6),
         child: FilterChip(
           selected: _filter.contains(namer.name),
           selectedColor: Colors.orangeAccent,
           label:Text(namer.name),
           avatar: CircleAvatar(
             backgroundColor: Colors.grey.shade600,
             child: Text(namer.name[0].toUpperCase()),
           ),
          
          onSelected: (bool selected){
            if(selected){
                print(namer.name);
                 _filter.add(namer.name);
            }
            else{
                _filter.removeWhere((String name){
                  return namer.name==name;
                });
          }}),
       );
    }
  }
  
}
class names{
final String name;
const names(this.name);
}