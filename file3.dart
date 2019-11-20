import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
      child:Container(
        padding: EdgeInsets.only(left:10.0,top:40.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child:Column(
           children: <Widget>[
             // widget 1
             Row(
               children:<Widget>[
                 Expanded(child: Text("row1",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
                 Expanded(child: Text("row2",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
                 Expanded(child:
                 Text("smarth",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
               ],
             ),
               //  widget 2
             Row(
               children:<Widget>[
                 Expanded(child: Text("row1",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
                 Expanded(child: Text("row2",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
                 Expanded(child:
                 Text(" delhi",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
               ],
             ),

             // widget 3

             Row(
               children:<Widget>[
                 Expanded(child: Text("row1",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
                 Expanded(child: Text("row2",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
                 Expanded(child:
                 Text("Athmin",
                   textDirection: TextDirection.ltr,
                   style: TextStyle(
                       decoration: TextDecoration.none,
                       fontSize: 34.0,
                       color:Colors.white
                   ),

                 ),
                 ),
               ],
             ),

            car(),
             button(),

           ],
        ),



      )
    );
  }

}


//image add concept

class car extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    AssetImage ai=AssetImage('image/imgc.png');
    Image image=Image( image: ai,height:100.0,width: 200.0,);
    return Container(child:image,);

  }
}

// Raised button concept

class button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top:30.0),
        child:RaisedButton(
            color: Colors.white,
            child: Text(
              "ConfirmedB",
              style: TextStyle(

                  fontSize: 34.0,
                  color:Colors.red,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
            elevation: 46.0,
            onPressed:()=> bookCar(context)


            ),
    );
  }
  void bookCar(BuildContext context){
    var alertDialog=AlertDialog(
      title: Text("Successfully"),
      content: Text("Thanks for booked"),

    );

    showDialog(context: context,
      builder: (BuildContext context) => alertDialog,

    );

  }



}