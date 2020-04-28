import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp0/Models/usermodel.dart';
import 'package:flutterapp0/services/Database.dart';

class Autheservice
{
  final FirebaseAuth _auth=FirebaseAuth.instance;

//create user object based on firebase user
User _firebaseuser(FirebaseUser user)
{
  return user!=null?User(uid:user.uid):null;
}
//change according to wrapper
Stream<User> get user{
  
  return _auth.onAuthStateChanged
  .map(_firebaseuser);
}
//signin 
Future signinAnonym() async{
  try{
        AuthResult result=await _auth.signInAnonymously();
        FirebaseUser user=result.user;
        return _firebaseuser(user);
  }
  catch(e)
  {
    print(e.toString());
      return null;
  }

}

Future signout() async{
  try{
return await _auth.signOut();
  }
  catch(e)
  {
    print(e.toString());
    return null;

  }


  
}

//sign in with email and password
Future<dynamic> signInEmailandPassword(String email,String password) async
{
  try{
    AuthResult result=await _auth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user=result.user;
    return _firebaseuser(user);
  }
  catch(e)
  {
    print(e.toString());
    return null;
    
  }
}
//signout
//register with email password
Future registerwithEmailandPassword(String email,String password) async
{
  try{
    AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user=result.user;
    
    await databaseservice(uid:user.uid).updatedata("3", "Rohith Kumar", 100);
    return _firebaseuser(user);
  }
  catch(e)
  {
    print(e.toString());
    return null;
  }
}
//signout

}