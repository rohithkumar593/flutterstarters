import 'package:flutter/material.dart';
import 'dart:math';
import 'package:table_calendar/table_calendar.dart';

class calendar extends StatefulWidget {
  @override
  _calendarState createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  DateTime _now;
  Map<DateTime,List> _events;
    CalendarController _controller;
    List _selectedEvent;
  @override
  void initState(){
    super.initState();
    final _today=DateTime.now().day;
    _controller=CalendarController();
    _events={
      DateTime.now().subtract(Duration(days:30)):['A0','B0','C0'],
    };
    _selectedEvent=_events[_today]??[];
  } 
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            TableCalendar(
          events: _events,
          calendarController: _controller,
          builders: CalendarBuilders(
            todayDayBuilder: (context,datetime,lis){
                 return Container(
                                  color: Colors.grey.shade200,
                                  child: Container(
                child: Center(child: Text('${datetime.day}',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),)),
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30)
              )),
                 );
            },
            
            dowWeekdayBuilder: ( context,str){
                return Container(
                  padding: EdgeInsets.only(top:20,left:15),
                  color: Colors.grey.shade200,
                  child: Row(
                    children: <Widget>[
                      Text(str)
                    ],
                  ),
                )
                ;
            },
            selectedDayBuilder: (context,datetime,lis){
              return Container(
                            color: Colors.grey.shade200,
                            child: Container(
                  child: Center(child: Text('${datetime.day}',style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),)),
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30)
                )),
              );
            },
            dayBuilder: (BuildContext context,datetime,lis){
                return  Container(
                                margin: EdgeInsets.all(0),
                                color: Colors.grey.shade200,
                                child: Container(      
                        child: Center(child: Text('${datetime.day}')),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(30)
                        ),
                    
                  ),
                );
            }
          ),
          
          headerStyle: HeaderStyle(
            
            centerHeaderTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            leftChevronIcon: Icon(
              Icons.arrow_left,color: Colors.white,
            ),
            rightChevronIcon: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            formatButtonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                25
              ),
              color:Colors.orange
            ),
            formatButtonShowsNext: false,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              shape: BoxShape.rectangle,
              
            )
          ),
        ),
       Container(
          height: 50,
          child: eventslist(),
       )
        
        
        ]
    );
  }
eventslist(){
 return ListView
 (
   children: _selectedEvent.map((event){
     return Card(
       child: Container(),
     );
   }).toList()
 );
}
}
