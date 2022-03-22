import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Detail.dart';
import 'addData.dart';


class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Store',),

      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(
          builder:(BuildContext context)=>new addData(),
          )
          ),),
    body:FutureBuilder<List>(
      future: getData(),
      builder: (context,snapshot){
        if(snapshot.hasError) print(snapshot.error);
        return snapshot.hasData? ItemList(list:snapshot.data,)
            :const Center(child: CircularProgressIndicator(),);

      },

    ),
    /*Container(
      decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("images/quiz.jpg"),
    fit: BoxFit.cover,
    ),
    ),
    ),*/
    );
  }
  Future<List> getData() async{
    var uri=Uri.parse("http://10.0.2.2/my_store/getdata.php");
    final response= await http.get(uri);
    return json.decode(response.body);
  }

}
class ItemList extends StatelessWidget {
  final List list;
  ItemList({  this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context,i){
        return Container(
          padding: const EdgeInsets.all(10.0),
          child:  GestureDetector(
            onTap:() =>Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=>new Detail(list:list,index:i)
            )
            ),
            child:  Card(
              child: ListTile(
                title: Text(list[i]['item_name']),
                leading: Icon(Icons.widgets),
                subtitle: Text(list[i]['stock']) ,
              ),
            ),
          ),
        );
        //Text(list[i]['item_name']);
      },

    );
  }
}
