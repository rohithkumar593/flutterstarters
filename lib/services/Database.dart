import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp0/Models/Brews.dart';
import 'package:flutterapp0/Models/usermodel.dart';

class databaseservice{

final String uid;
//create collection instance
final CollectionReference collection=Firestore.instance.collection("Coffee");

databaseservice({this.uid});

//access the modules by usibg its instance
Future updatedata(String sugars,String name,int strength) async{

  return await collection.document(uid).setData(
    {
      "sugars":sugars,
      "name":name,
      "strength":strength
    }
  );

}
List<brews> _brewlistforsnap(QuerySnapshot snapshot)
{
  return snapshot.documents.map((doc){
    return brews(
      name:doc.data["name"]??"",
      strength:doc.data["strength"]??0,
      sugars:doc.data["sugars"]??"0"
    );
  }).toList();
}
UserData _returnUsersnap(DocumentSnapshot snapshot){
  return UserData(
    uid: uid,
    name: snapshot.data["name"],
     sugars: snapshot.data["sugars"],
      strength: snapshot.data["strength"],
  );
}
Stream<List<brews>> get coffee{
  return collection.snapshots()
  .map(_brewlistforsnap);
}

Stream<UserData> get userdata{
  return collection.document(uid).snapshots().
  map(_returnUsersnap);
}
}