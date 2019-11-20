import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child:Row(
          children:<Widget>[
            Text("row1",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 43.0,
                color:Colors.white
              ),

            ),
            Text("row2",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 43.0,
                  color:Colors.white
              ),

            ),
             Expanded(child:
            Text("samarth come from delhi",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 24.0,
                  color:Colors.white
              ),

            ),
             ),
          ],
        )
      )
    );
  }

}