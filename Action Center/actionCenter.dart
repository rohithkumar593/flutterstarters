import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    home: actionCenter(),
  )
);
class actionCenter extends StatefulWidget {
  @override
  _actionCenterState createState() => _actionCenterState();
}

class _actionCenterState extends State<actionCenter> {
   final _x=10;
  Map<String,List> _events;
  Map<String,Map<int,List>> _classes;
  DateTime _today;
  @override
  void initState(){
    super.initState();
    _today=DateTime.now().toLocal();

    String _date=DateTime.now().toString().substring(0,_x);
    _events={
     _date:[["Assemblegeeks","TejasHall"],["Assemblegeeks","TejasHall"],]
    };
    _classes ={
        "I":{
            1:[["8:30-12:30","DMS"],["2:00-5:00","DLD"]],
            2:[["8:30-12:30","DMS"],["2:00-5:00","DLD"]],
            3:[["8:30-12:30","DMS"],["2:00-5:00","DLD"]],
            4:[["8:30-12:30","DMS"],["2:00-5:00","DLD"]],
            5:[["8:30-12:30","DMS"],["2:00-5:00","DLD"]],
            6:[["Collegeledu ","Pandagachey"]]
        },
    };

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromRGBO(19, 39, 61, 1),
          body: SafeArea(
        child: Column(
          children:[
          Container(margin:EdgeInsets.only(top:10),child: navbar()),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment:Alignment.topLeft,child: Text("Todays Classes",style: TextStyle(color:Colors.white,fontSize:20),)),
          ),
          SizedBox(height: 10,),
          cards(_classes),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment:Alignment.topLeft,child: Text("Todays Events",style: TextStyle(color:Colors.white,fontSize:20),)),
          ),
           SizedBox(height: 10,),
          eventCards(_events[DateTime.now().toString().substring(0,_x)])
        ]
        ),
      ),
    );
  }
  Widget navbar(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[      
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Action Center",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications,size: 25,color:Color.fromRGBO(207, 242, 87, 1),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.view_comfy,size:25,color: Color.fromRGBO(207, 242, 87, 1),),
          ) ,
        
        ]);
  }
  Widget cards(Classes){

         int _day=DateTime.now().weekday;
         List _data=Classes["I"][_day];
         return Container(
           height: 100,
         
           child: ListView(
             scrollDirection:Axis.horizontal,
             children: List<Widget>.generate(_data.length, (int index){
               return Container(
                 margin: EdgeInsets.only(left:8.0,right:8.0),
                 width: 250,
                 child: Card( 
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),      
                 color: Color.fromRGBO(66, 93, 122, 1),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(_data[index][0],style: TextStyle(fontSize:20,color:Colors.white54 ),),
                        Text(_data[index][1],style: TextStyle(fontSize:20,color:Colors.white),)
                      ],
                   ),
                 ),
               );
             }),
           )
         ); 
       
    }
  Widget eventCards(events){ 
        return Column(
          children: List<Widget>.generate(events.length, (int index){
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                                    color: Color.fromRGBO(66, 93, 122, 1),
                                    child: ListTile(
                      title: Text(events[index][0],style: TextStyle(color:Colors.white),),
                      subtitle: Text(events[index][1],style:TextStyle(color:Colors.white60),),
                    ),
                  ),
                );
          }),
        );
  }
}