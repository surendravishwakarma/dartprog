import 'package:flutter/material.dart';
import './ab_scn/scn.dart';
void main() => runApp(new demo ());


class demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title:"demo",
        home:Scaffold(
          appBar:AppBar(title:Text("My ext app"),),
          body:fscn(),
        )



    );
  }
}