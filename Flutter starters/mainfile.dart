import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
/*void main()
{
  runApp(Myapp());
}*/

/*List<String> strings=[
 "assets/maneesh.jpg",
  "assets/mokshith.jpg",
  "assets/Rohith.jpg",
  "assets/suryaprakash.jpg"
];*/
var strings=[
  ["assets/maneesh.jpg","Maneesh Gupta"],
  ["assets/suryaprakash.jpg","Pala Buddi"],
  ["assets/Rohith.jpg","Rohith Kumar"],
  ["assets/mokshith.jpg","Mokshith Das"],

];


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(child: Swiper(itemCount:4,
              itemBuilder:(BuildContext context,int index){
                return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height:300 ,
                      child: Column(
                          children:[
                            Container(
                                height: 300,
                                width:300,
                                child:  Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(strings[index][0],fit: BoxFit.cover,),

                                )
                            ),

                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SafeArea(
                                child: Text(strings[index][1],
                                  style:TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color:Colors.black87,
                                    letterSpacing: 0.1,
                                    backgroundColor: Colors.black12,

                                  ))),
                            )]),
                    ));},
              viewportFraction: 0.8,
              scale: 0.9,
              itemWidth: 300,
              itemHeight: 400,
              layout: SwiperLayout.STACK,
            ))));
  }


}


