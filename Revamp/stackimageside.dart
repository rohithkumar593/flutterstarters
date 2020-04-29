import 'package:flutter/material.dart';

Widget stackImage(Size size){
   return Container(
              
               height: size.height,
               width: size.width,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode( Color.fromRGBO(100, 240, 214, 1), BlendMode.modulate),
                    image: AssetImage("assets/back.png",
                    )
                  )
                ),
                child: Align(
                                  alignment: Alignment(0, -0.5),
                                  child: Stack(
                                  
                       children: [
                         CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                         ),
                          Text(
                    " Revamp",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    
                  ),]
                                  ),
                ),    
             );
}