import 'package:flutter/material.dart';
//import './scn/Note.dart';
import './scn/Edit.dart';
import 'package:note_book/scn/Note.dart';
main(){
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'note keeper',

        //home:NoteDetail(),
        home:NoteList(),
    );

  }

}