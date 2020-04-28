import 'package:flutter/material.dart';


void main()=>runApp(
  new MaterialApp(
    home: Home(),
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  List<String> _items;
  AnimationController _controller;
  Animation _animation;
  int _selectedindex=0;
  Color _color;
  double opac;
  @override
  void initState(){
    super.initState();
     opac=1;
     _controller=AnimationController(
       vsync:this,
       duration: Duration(seconds:3) 
     );
     _animation=Tween(
       begin: -1.0,
       end: 1.0
     ).animate(_controller);
     _items=["Home","About","Contact","Dobbey"];
  }
  @override
  void dispose() {
     _controller.dispose();
    super.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
          appBar: AppBar(
            title: Text("Rohith Kumar"),
          ),
          body:transit() ,
            floatingActionButton: FloatingActionButton(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black,
              child: Icon(Icons.add),
            ),
            onPressed: (){}),
          bottomNavigationBar: BottomAppBar(
            color:Colors.deepOrangeAccent,
            child: FadeTransition(
                          opacity: _animation,
                          child: Container(
                height: 50,  
                child: Row(
                   mainAxisSize: MainAxisSize.max,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List<Widget>.generate(_items.length, (index){
                      return Container(
  
                        child: InkWell(
                            splashColor: Colors.blue.withAlpha(2),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.person,
                                color: _selectedindex==index?Colors.black:Colors.grey,),
                                Text(_items[index],
                               style: TextStyle(
                                 color:_selectedindex==index?Colors.black:Colors.grey
                               ),)
                              ],
                            ),
                            onTap: (){
                              setState(() {
                                _selectedindex=index;
                              });
                                  
                            },
                        ),
                      );
                  }),
                ),
              ),
            ),
            
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        

    );
  }
  transit(){
    return FadeTransition(
          opacity: _animation,
          child: Container(
            width: 300,
            height: 300,
            color: Colors.grey,
            child: Center(
              child: Text("hi"),
            ),
          ),
          );
  }
  stack(){
    return  Stack(
        children: <Widget>[
        
          Opacity(
            opacity: 0.25,
            child: cont(Colors.green),
            ),
          Positioned(
            top:20,
            left:20,
            right:20,
            bottom:20,
            child: Image(
              image:new AssetImage("assets/mokshith.jpg"),
              fit: BoxFit.fitWidth,
              ),
          ),
        ],
      );
      }
  col(){
    return Column(
        children: <Widget>[
          cont(Colors.black26),
          Opacity(
            opacity: 0.25,
            child: cont(Colors.green),
            ),
          AnimatedOpacity(
            opacity: opac, 
            duration: Duration(seconds:3),
            curve: Curves.fastOutSlowIn,
            child: cont(Colors.pink),),
          RaisedButton(
            onPressed: (){_opacitychange();},
            child: Text("Click me"),)
        ],
      );
  }
  Widget cont(Color color){
    return Container(
          margin: EdgeInsets.all(10),
          width: 200,
          height: 200,
          color: color,
          child: Center(
            child:Text("Rohith")
          ),
    );

  }

  void _opacitychange(){
    setState(() {
       opac==1?opac=0.5:opac=1;
    });
  }
}