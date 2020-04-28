Widget builder(Navitem item,bool isselected){
  return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: isselected?114:50,
      height: 40,
      decoration:isselected? BoxDecoration(
          color:Colors.black26,
          borderRadius: BorderRadius.all(Radius.circular(12))
      ):null,
      child:Row(
        children: <Widget>[
          IconTheme(
            data: IconThemeData(
                size:30

            ),
            child: item.icon,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(4,6,4,4),
          ),
          isselected?item.title:Container()
        ],
      )
  );

}