import 'dart:math';

import 'package:flutter/material.dart';
class fscn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color:Colors.blue,
      child:Center(
        child:Text(
          "Hello_Athmin family ${genNub()}",
          textDirection:TextDirection.ltr,
          style:TextStyle(color:Colors.white,fontSize: 40.0,fontWeight:FontWeight.bold,
          ),
        ),
      ),
    );
  }


  int genNub(){
    // ignore: unused_local_variable
    var random=Random();
    int lucknumb=random.nextInt(5);
    return lucknumb;
  }


}