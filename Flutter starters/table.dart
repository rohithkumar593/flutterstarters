import 'package:flutter/material.dart';
void main()=>runApp(
MaterialApp(
  home: PageScreen(),
)
);

class PageScreen extends StatefulWidget {
  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  PageController _controller;
  @override
  void initState(){
    super.initState();
    _controller=PageController(
      initialPage: 0
    );
  
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return CustomScrollView(
        
        slivers: <Widget>[
         SliverAppBar(
            expandedHeight: 300,
            floating: true,
            pinned: true,
            snap: true,
            backgroundColor: Colors.grey.shade600,
            flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/nature.jpg",
                  fit: BoxFit.fill,),
                   title: Text("Rohith Kumar",
                   style: TextStyle(
                     color: Colors.black54,
                     fontSize: 20
                   ),),
                   centerTitle: true,

            ),
         ),
          cont(size.width, 200, Colors.grey),
          cont(size.width, 200, Colors.indigo),
           cont(size.width, 200, Colors.lightBlueAccent),
          cont(size.width, 200, Colors.limeAccent),
           cont(size.width, 200, Colors.purpleAccent),
          cont(size.width, 200, Colors.redAccent),
           cont(size.width, 200, Colors.teal),
          cont(size.width, 200, Colors.blue),
           cont(size.width, 200, Colors.greenAccent),
          cont(size.width, 200, Colors.grey)
        ],
    );
  }
  table(){
    return SafeArea(
              child: Table(
                border: TableBorder.symmetric(
                  inside:BorderSide(
                    color: Colors.grey
                  ),
                  outside: BorderSide(
                    color: Colors.grey
                  )
                ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                      cont(300,200,Colors.grey),
                      cont(50,100,Colors.cyan),
                      cont(200,100,Colors.deepOrangeAccent)
              ]
            ),
            TableRow(
              children: [
                  cont(300,200,Colors.black),
                      cont(50,100,Colors.cyan),
                      cont(200,200,Colors.brown)
              ]
            )
          ],
        ),
      );
  }
  Widget cont(double width,double height,Color color){
    return Container(
      width: width,
      height: height,
      color: color
    );
  }
  dismissable(){
    return 
     ListView.builder(
              itemCount: _names.length,
              itemBuilder: (BuildContext context ,int index){
                    return Dismissible(
                      onDismissed: (DismissDirection direction){
                            setState(() {
                              _names.removeAt(index);
                              _kind.removeAt(indexer);
                            });
                      },
                      key: UniqueKey(), 
                      background: Container(
                        child: Align(
                          alignment: Alignment(0,0),
                          child: Text(_kind[index]
                          ,style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 19
                          ),
                          ),
                        ),
                      ),
                      child: Cont(_names[index]),
                      direction: DismissDirection.down,
                    );
              });
            }
  imageblur(){
   return  Stack(
       children: <Widget>[
         Positioned(
            top:30,
            width:400,
            height: 300,
            child: Image.asset("assets/mokshith.jpg",
            fit: BoxFit.fitWidth,),
         ),
         BackdropFilter(
           filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
           ),
           child: Container(
              color: Colors.black.withOpacity(0),
           )
         ),
        
       ],
      );
  }
  Widget Cont(String text){
    Size size=MediaQuery.of(context).size;
    return Card(
      
      child: Container(
        width: size.width,
        height: 100,
        color: Colors.grey.shade100,
        child: ListTile(
          leading: Icon(Icons.add),
          title: Align(
                      alignment: Alignment.centerRight,
                      child: Text(text,style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
          ),
        ),
      ),
    );
  }
  pageviewer(){
    return PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: <Widget>[
              contain(Colors.blueGrey, "Rohith"),
              contain(Colors.grey.shade600, "Kumar"),
              contain(Colors.blueGrey, "Inkem Cheylenu nuv tippite")
        ],
    );
  }
  Widget contain(Color color,String text){
      Size size= MediaQuery.of(context).size;
      return Scaffold(
              body: Container(
            width: size.width,
            height: size.height,
            color:color,
            child: Center(
              child: Text(text,
              style: TextStyle(
                fontSize: 25
              ),),
            ),
        ),
      );
  }
}