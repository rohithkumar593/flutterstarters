import 'package:flutter/material.dart';


Widget bottomstackfile(Size size){
   return Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                height: size.height*0.36,
                width: size.width,
                child: Column(
                                
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[ 
                  Container(
                    margin: EdgeInsets.only(left:30.0,top: 65),
                    child: Text("Get to Experience the \nrevamp",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      
  
                    ),),
                  ),
                 
                    Container(
                    margin: EdgeInsets.only(left:30.0,top: 20),
                    child: Text("Get involved with \n whats happening near you",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        
                    ),),
                  ),
                  SizedBox(height:10),
                  Padding(
                          padding: EdgeInsets.all(12.0),
                                      child: Align(
                      alignment: Alignment.centerRight,
                      child: RaisedButton
                      (
                        splashColor: Colors.blue.withBlue(2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        onPressed: (){},
                      color: Color.fromRGBO(100, 240, 214, 1),
                      child: Text("Continue",style: TextStyle(
                        fontSize: 15
                      ),),
                    
                      ),
                    ),
                  )
                  ]
                ),
                
                 decoration:BoxDecoration(
                     color: Color.fromRGBO(19,39,61, 1),
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(20),
                       topRight: Radius.circular(20),
                     )
                 ) ,
                 ),
           );
} 