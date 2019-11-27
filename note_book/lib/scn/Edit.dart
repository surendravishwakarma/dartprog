import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteD();
  }

}

class NoteD extends State<NoteDetail>{
  static var priority=['high','low'];
  TextEditingController txt1=TextEditingController();
  TextEditingController txt2=TextEditingController();



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit New info'),
      ),
      body:Padding(
        padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
        child: ListView(
          children: <Widget>[

            // first element
            ListTile(
              title:DropdownButton(
                items: priority.map((String ddsi){
                  return DropdownMenuItem<String>(
                  value:ddsi,
                  child:Text(ddsi),
                  );
                  }).toList(),

                  value: 'low',

                  onChanged: (valuesu){
                    setState(() {
                      debugPrint('usersleted ${valuesu}');
                    });
                  }
              ),
            ),

            // element 2

            Padding(
                padding:EdgeInsets.only(top: 15.0,bottom:15.0),
                child:TextField(
                  controller: txt1,
                  onChanged: (value){

                  },

                  decoration: InputDecoration(
                      labelText: 'title',
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      )
                  ),


                ) ,
            ),

//third element
            Padding(
              padding:EdgeInsets.only(top: 15.0,bottom:15.0),
              child:TextField(
                controller: txt2,
                onChanged: (value){

                },

                decoration: InputDecoration(
                  labelText: 'discription',
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  )
                ),
              ) ,
            ),

            //fourth element
            Padding(
                padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                     child: RaisedButton(
                           child: Text('save',
                             textScaleFactor: 2.0,
                           ),

                       onPressed: (){
                             setState(() {
                               debugPrint('saveB');
                             });
                       },
                            ),
                    ),
                   Container(width: 5.0,),
                    Expanded(
                        child: RaisedButton(
                          child: Text('Delete',
                            textScaleFactor: 2.0,
                          ),
                          onPressed: (){
                            setState(() {
                              debugPrint('deleted item');
                            });
                          },
                        )
                    ),



                  ],
                ),

            )


          ],
        ),
          
      
      ),
     
    );
  }

  

}