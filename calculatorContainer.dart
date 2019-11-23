import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(

  MaterialApp(
    title: 'simple int cal',
    debugShowCheckedModeBanner: false,

    home: sfw(),

    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor:Colors.indigo,
      accentColor: Colors.indigoAccent,

    ),
  )


 );

class sfw extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SIState();
  }

}

class SIState extends State<sfw> {

 //only static member initialize here

  var cr=['select','rupees','dollar','pound','other'];
  var ncr1='';

  // non static
  void initState(){
    super.initState();
    ncr1=cr[0];
  }




  TextEditingController txp=TextEditingController();
   TextEditingController txr=TextEditingController();
   TextEditingController txtm=TextEditingController();
   var displayrst='';
  final padding=4.0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   TextStyle textStyle=Theme.of(context).textTheme.title;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(' calculate simple interest'),
      ),

      body: Container(
        margin: EdgeInsets.all(padding*2),

        child: ListView(
          children: <Widget>[
            car(),

            //output

            Padding(
              padding: EdgeInsets.all(2*padding),
              child: Text('output and pay',style: textStyle,),
            ),

            Padding(
              padding: EdgeInsets.all(2*padding),
              child: Text(this.displayrst,style: textStyle,),
            ),








            Padding(
          padding: EdgeInsets.only(top: padding,bottom: padding),
          child: TextField(
              keyboardType: TextInputType.number,
              style: textStyle,
              controller: txp,
              decoration: InputDecoration(
                labelText: 'principal',
               hintText: "enter amount",
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),

              ),

            )
        ),


            Padding(
              padding:EdgeInsets.only(top:padding,bottom: padding),

           child: TextField(
             keyboardType: TextInputType.number,
             style: textStyle,
              controller: txr,
              decoration: InputDecoration(
                labelText: 'rate of interest',
                 labelStyle: textStyle,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(6.0),
                 ),
              ),
            )),

        //Row one



          Padding(
            padding:EdgeInsets.only(top:padding,bottom: padding),
             child:Row(
              children: <Widget>[

                Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                  style: textStyle,
                  controller: txtm,
                  decoration: InputDecoration(
                    labelText: 'term',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      
                    ),
                  ),
                )
                ),

              Container(width: padding*5,),

               Expanded(
                 child:DropdownButton<String>(
                   items:cr.map((String ditems){

                     return DropdownMenuItem<String>(
                       value: ditems,
                       child: Text(ditems),
                     );

                   }).toList(),

                   onChanged: (String newValueSelect){      //select item by user

                     itemSelect(newValueSelect);       //function calling
                   },
                   value: ncr1,


                 ),
               )


              ],
            ),),


             // Row 2

            Padding(
              padding: EdgeInsets.only(top: padding,bottom: padding),
              child: Row(
              children: <Widget>[

                Expanded(
                    child:RaisedButton(
                      child: Text('calculate',textScaleFactor: 1.5,),
                      onPressed:() {
                        setState(() {
                          this.displayrst=totalcal();
                        });

                      },
                    ),
              ),

                Expanded(
                  child:RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text('Reset',textScaleFactor: 1.5,),
                    onPressed:() {
                      setState(() {
                        resetB();
                      });
                    },
                  ),
                ),



              ],
            ),),

//            Padding(
//              padding: EdgeInsets.all(2*padding),
//              child: Text('output here',style: textStyle,),
//            ),
//
//            Padding(
//              padding: EdgeInsets.all(2*padding),
//              child: Text(this.displayrst,style: textStyle,),
//            )





          ],
        ),
      ),

    );
  }


  Widget car(){
    AssetImage assetImage=AssetImage('image/car.png');
    Image image=Image(image:assetImage,height: 100.0,width: 200.0,);
    return Container(
      child: image,margin: EdgeInsets.all(10*padding),
    );
  }


  //DDbutton

  void itemSelect(String newValueSelect){
    setState(() {
      this.ncr1=newValueSelect;
    });
  }


  String  totalcal(){

    double principal=double.parse(txp.text);  //extract all  input values
    double rate=double.parse(txr.text);
    int term=int.parse(txtm.text);
    double payable=principal+(principal*rate*term)/100;
    String result='$payable in $ncr1  after $term year ';
    return result;
  }

void resetB(){
    txp.text='';
    txr.text='';
    txtm.text='';
    displayrst='';
    ncr1=cr[0];
}


}













  
  
