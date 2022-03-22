import 'package:flutter/material.dart';

import './WeatherDetail.dart';

class Meteo extends StatefulWidget {
  @override
  State<Meteo> createState() => _MeteoState();
}

class _MeteoState extends State<Meteo> {
  String city="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(city),

      ),
    body: Container(
      decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("images/meteo.jpg"),
    fit: BoxFit.cover,

    ),
    ),
     child: Column(
       children: <Widget>[Padding(
         padding: const EdgeInsets.all(20.0),
         child: TextField(

           decoration: InputDecoration(hintText: 'Tappez une ville',icon: Icon(
               Icons.find_in_page,
             //Icons.arrow_right,
           ),hintStyle: TextStyle(fontSize: 22,color: Colors.white)),
           onChanged: (value){
             setState(() {
               this.city=value;
             });

           },


         ),
       ),
       Container(
           child: RaisedButton(
             onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=>WheatherDetail(city)));

             },
             color: Colors.lightBlue,
             child: Text('Get wheather',style: TextStyle(color: Colors.white,fontSize: 22),),
           ))],
     ),
    ),

    );
  }
}
