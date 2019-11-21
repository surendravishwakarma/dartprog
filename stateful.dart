import 'package:flutter/material.dart';

void main() => runApp(

    MaterialApp(
      title:'first_prog',
      debugShowCheckedModeBanner: false,
      home: sfw(),

)
);




class sfw extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _sfwState();
  }
}

class _sfwState extends State<sfw>{
  String name="";
  @override
  Widget build(BuildContext context) {
    debugPrint("hello");

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text("dynamic_page"),
      ),

      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userinput){
                setState(() {
                  debugPrint("userinput");
                  name=userinput;
                });


              },
            ),


            Padding(
               padding: EdgeInsets.all(30.0),
              child:Text(
              "your best name is $name",
              style: TextStyle(fontSize: 30.0),
            ),
            )

          ],
        ),

      ),
    );
  }


}