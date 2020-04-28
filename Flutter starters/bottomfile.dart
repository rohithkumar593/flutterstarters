import 'package:flutter/material.dart';
class bottomarea extends StatelessWidget {
  var _icon;

  @override
  Widget build(BuildContext context) {


    return Container(
        height: 100,
        color: Colors.grey,

        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:List<Widget>.generate(4, (generator)=>

                    width: 60,
                    height: 40,
                    color:Colors.black87


                )

            )

        )

    );
  }
}