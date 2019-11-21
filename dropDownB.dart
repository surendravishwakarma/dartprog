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
    return demo();
  }
}

class demo extends State<sfw>{
  var currencies=['Select','rupees','dolar','pound','other'];
  var newcur='Select';
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
              //onChanged()  is also method
              onSubmitted: (String userinput){

                setState(() {
                  debugPrint("userinput");
                  name=userinput;
                });


              },
            ),
            DropdownButton<String>(
              items:currencies.map((String s2){
                return DropdownMenuItem<String>(
                  value:s2,
                    child:Text(s2),
                );

              }).toList(),

              onChanged: (String st){
                  selectD(st);
              },
              value: newcur,
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


void selectD(st){
  setState(() {
    this.newcur=st;
  });
}

}