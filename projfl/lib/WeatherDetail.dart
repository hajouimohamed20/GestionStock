import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
class  WheatherDetail extends StatefulWidget {
  String city='';
  WheatherDetail(this.city);

  @override
  _WheatherDetailState createState() => _WheatherDetailState();

}

class _WheatherDetailState extends State<WheatherDetail> {
  var weatherData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData(widget.city);
  }
  getData(String city){

    String url= "http://api.openweathermap.org/data/2.5/forecast?q=${city}&appid=fcad58be01fcbfd23fa29b5a63c5ed94";
    http.get(Uri.parse(url)).then((response) {
      setState(() {
        print(response.body);
        this.weatherData=json.decode(response.body);
      });

    }).catchError((err){
      print(err);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Wheather of city : ${widget.city}',style: TextStyle(fontSize: 22),),
      backgroundColor: Colors.blue,),
      body:
      //Text('hello',style: TextStyle(fontSize: 22),)
      (weatherData==null? Center(child: CircularProgressIndicator(),):
        ListView.builder(
            itemCount:(weatherData==null? 0:weatherData['list'].length),
            itemBuilder:(context,index){
              return Card(
                color:Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget> [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/${weatherData['list'][index]['weather'][0]['main'].toString().toLowerCase()}.png"),
                        //print(${weatherData['list'][index]['weather'][0]['main'].toString().toLowerCase()});

                      ),
                      //new Date

                      Text( new DateFormat('E -dd/MM/yyyy').format(DateTime.fromMillisecondsSinceEpoch(weatherData['list'][index]['dt']*100000))
                        ,style: TextStyle(fontSize: 18,color: Colors.white),),
                      Text("Temp:${weatherData['list'][index]['main']['temp']}",style: TextStyle(fontSize: 18,color: Colors.white),),
                    ],
                  ),
                ),
              );
            }
            ))
          /*
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/meteo.jpg"),
            fit: BoxFit.cover,

          ),
        ),
      ),
      */
      /*
      * if(){

       }
      else{

      }
      (weatherData==null? Center(child: CircularProgressIndicator(),)):
        ListView.builder(
        itemCount:(weatherData==null? 0:weatherData['list'].length),
        itemBuilder:(context,index){
          return Card(

          );

        }
    }

    )

      *
      * */






    );

  }
}
