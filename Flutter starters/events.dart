import 'package:flutter/material.dart';
import 'mainfile.dart';
void main()=>runApp(RohithApp());
class RohithApp extends StatefulWidget {
  @override
  _RohithAppState createState() => _RohithAppState();
}
class _RohithAppState extends State<RohithApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        home:Scaffold(
          appBar: AppBar(title: Text("K Rohith Kumar"),),
          body:Myapp(),
          bottomNavigationBar: navbar(),

        )
    );
  }
}
class navbar extends StatefulWidget {
  @override
  _navbarState createState() => _navbarState();
}
class _navbarState extends State<navbar> {
  List<Navitem> items=[
    Navitem(Icon(Icons.home),Text("Home")),
    Navitem(Icon(Icons.calendar_today),Text("About")),
    Navitem(Icon(Icons.notifications),Text("Notification")),
    Navitem(Icon(Icons.contact_mail),Text("Contact"))
  ];
  var _selectedind=0;
  Widget _build(Navitem item,bool isselected ){
    return AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: isselected?114:50,
        height: 40,
        decoration:isselected? BoxDecoration(
            color:Colors.black26,
            borderRadius: BorderRadius.all(Radius.circular(12))
        ):null,
        child:Row(
          children: <Widget>[
            IconTheme( data: IconThemeData( size:30 ), child: item.icon, ),
            Padding(
              padding: EdgeInsets.fromLTRB(4,6,4,4),
            ),
            isselected?item.title:Container()
          ],
        )
    );

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
            color:Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5
              )
            ]
        ),
        child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items.map((item){
              var itemind=items.indexOf(item);
              return  GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedind=itemind;
                  });
                },
                child: _build(item, _selectedind==itemind),
              );


            }).toList()
        )
    );
  }
}

class Navitem {
  final Icon icon;
  final Text title;
  Navitem(this.icon,this.title);
}

