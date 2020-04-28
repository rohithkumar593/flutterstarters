import 'package:flutterapp/calendardata.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class databaseservice{

final CollectionReference collection=Firestore.instance.collection("Events");
Future UpdateData(DateTime date,List events) async{
 return await collection.document("1234").setData(
    {
     "events":{
       date:events
     }
    }
  );
}
Calendardata _returnUsersnap(DocumentSnapshot snapshot){
return Calendardata(
  datetime: snapshot.data["datetime"],
  events: snapshot.data["events"]
);
}
Stream<Calendardata> get data{
  return collection.document("1234").snapshots().
  map(_returnUsersnap);
}
}