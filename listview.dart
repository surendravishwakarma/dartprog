import 'package:flutter/material.dart';
//import './sec/file2.dart';
void main() => runApp(MaterialApp(
 title: "XYZ",
  debugShowCheckedModeBanner: false,
  home:Scaffold(
    appBar: AppBar(
      title: Text("Listing view"),
    ),
   body: glv(),
  ),
  //demo(),

));


Widget glv(){
 var lv=ListView (children:<Widget>[
  ListTile(
   leading:Icon(Icons.landscape),
   title: Text("Nature Icons "),
   subtitle: Text("beautifulview!"),
   trailing: Icon(Icons.wb_cloudy),
    onTap: (){
      debugPrint("Athmin");
    },
  ),

   ListTile(

     leading: Icon(Icons.laptop),
     title: Text("Wimdows"),


   ),


   ListTile(
     leading:Icon(Icons.phone_in_talk),
     title: Text("nice"),

   ),

   Text('show all list view above'),
   Container(color: Colors.red,height: 20.0,),
 ]


 );

return lv;
}