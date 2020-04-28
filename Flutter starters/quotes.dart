import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotecard.dart';
void main()
{
  runApp(MaterialApp(
    home: Home(),
  ));
}

class quotes{
  String text;
  String quote;
  quotes(this.text,this.quote);
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<quotes> quoter = [
    quotes ( "i am never down", "Rohith Kumar" ),
    quotes ( "i am down always", "Rohith Kumar" ),
    quotes ( "will i be own", "Rohith Kumar" )
  ];


  @override
  Widget build ( BuildContext context ) {
    return Scaffold (
        appBar: AppBar (
          title: Text ( "Rohith Kumar" ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: quoter.map ( (quote) =>
                Cardread (
                    quote:quote,
                    delete: ( ) {
                      setState ( ( ) {
                        quoter.remove(quote);
                      } );
                    }
                ) ).toList ( )
        ) );
  }
}





