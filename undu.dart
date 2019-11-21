import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import './sec/file2.dart';
void main() => runApp(MaterialApp(
 title: "XYZ",
  debugShowCheckedModeBanner: false,
  home:Scaffold(
    appBar: AppBar(
      title: Text("Listing view"),),
    body:getView(),
   floatingActionButton: FloatingActionButton(
     onPressed: (){debugPrint('fab clicked');
     },
     child: Icon(Icons.add),
     tooltip: 'add one more item',


   ),
   //body:glv(),
  ),
  //demo(),

));


//undo operation

void showSnackBar(BuildContext context,String item){

  var snackBar=SnackBar(
    content:Text("you just add $item"),
   action: SnackBarAction(label: "UNDU",onPressed: (){
     debugPrint('performed undo operation');
   },
   )
  );

  Scaffold.of(context).showSnackBar(snackBar);
}







//Longlist
List<String> getLVE(){
   var item=List<String>.generate(1000, (count) => "item $count"); //labda expression and prepared data
  return item;
}

Widget getView(){

  var  li=getLVE();
 // var context;
  var lv=ListView.builder(itemBuilder:(context, index){
    return ListTile(
    leading: Icon(Icons.access_alarm),
      title: Text(li[index],),
      onTap: (){
      showSnackBar(context,li[index]);
      //debugPrint('${li[index]} was trapped');
      },

    );

  }

   );
    return lv;

}












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
