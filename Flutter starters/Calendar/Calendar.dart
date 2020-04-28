import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;
  DateTime _today;
  List _selectedevents;
  Map<DateTime,List> _events;
//  Map<DateTime,List<List<String>>> _events;

  @override
  void initState(){
    super.initState();
    _controller=CalendarController();
      _today=DateTime.now();
    _events={
    _today.subtract(Duration(days:30)):[
      ["Rohith","TejasHall"],
      ["Mokshith","Mansoor Hall"]
      ]
    };
    _selectedevents=_events[_today.day]??[];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TableCalendar(
          onDaySelected: (datetime,events){
            setState(() {
              _selectedevents=events;
            });
          },
          calendarController:_controller,
          events: _events, 
          calendarStyle: CalendarStyle(
          
            contentPadding: EdgeInsets.all(0),
            outsideDaysVisible: false,
            todayColor: Colors.black,
            selectedColor: Colors.pink
          ),
          builders: CalendarBuilders(
            dowWeekdayBuilder: (context,string){
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(string)
                  ],
              );
            }

          ),
          headerStyle: HeaderStyle(
           formatButtonVisible: false,
            centerHeaderTitle: true,
            headerMargin: EdgeInsets.only(top:20,bottom:25),
            titleTextStyle: TextStyle(
              fontSize: 25,
              color:Colors.white
            )
          ),
        ),
        Expanded(
          child: eventslist(),
        )      
      
      ],
    );
  }
  eventslist(){
    return ListView
 (
   children: _selectedevents.map((event){
     return Card(
       color: Color.fromRGBO(53, 73, 88, 0.671),
       child: ListTile(  
         title: Center(child:Text(event[0])),  
         subtitle: Center(child: Text(event[1])),
       ),
     );
   }).toList()
 );
  }
}