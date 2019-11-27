import 'package:flutter/material.dart';
import 'Package:note_book/scn/Edit.dart';

class NoteList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteList2();
  }
}

class NoteList2 extends State<NoteList>{
  var count;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NotePade'),
      ),


      //body: getListView(),

      floatingActionButton: FloatingActionButton(
        
        onPressed: (){
          debugPrint('hellofab');

          Navigator.push(context, MaterialPageRoute(builder: (context){

             return NoteDetail();    //class call

          }));
        },
        tooltip: 'add note',

        child:Icon(Icons.add),
      ),
    );
  }




ListView getListView(){
    TextStyle textStyle=Theme.of(context).textTheme.subhead;
    return ListView.builder(
         itemCount: count,
        itemBuilder: (BuildContext context,int position){
           var titleStyle;
           return Card(
             color:Colors.white,
             elevation:2.0,
             child:ListTile(

               leading: CircleAvatar(
                 backgroundColor: Colors.yellow,
                 child:Icon(Icons.keyboard_arrow_right),
               ),

               title: Text('Dummy Tile',style: titleStyle,),
               subtitle: Text('Dummy Date'),

               trailing: Icon(Icons.delete,color: Colors.grey,),

               onTap: (){
                 debugPrint('listTile tap');

                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return NoteDetail();
                 }));

               },


             )

           );
        }
    );
}

}