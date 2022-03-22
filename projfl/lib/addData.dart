import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mohflutter/addData.dart';
class addData extends StatefulWidget {

  @override
  _addDataState createState() => _addDataState();
}

class _addDataState extends State<addData> {
  TextEditingController controllerCode=new TextEditingController();
  TextEditingController controllerName=new TextEditingController();
  TextEditingController controllerPrice=new TextEditingController();
  TextEditingController controllerStock=new TextEditingController();
  void addData(){
    //var uri=Uri.parse("http://10.0.2.2/my_store/adddata.php");
    var url="http://10.0.2.2/my_store/adddata.php";
    http.post(Uri.parse(url),body: {
      "itemcode":controllerCode.text,
      "itemname":controllerName.text,
      "price":controllerPrice.text,
      "stock":controllerStock.text,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY STORE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerCode,
                  decoration: new InputDecoration(
                    hintText: "Item Code",
                    labelText: "Item Code"
                  ),
                ),
                new TextField(
                  controller: controllerName,
                  decoration: new InputDecoration(
                      hintText: "Item Name",
                      labelText: "Item Name"
                  ),
                ),
                new TextField(
                    controller:controllerPrice,
                    decoration: new InputDecoration(
                      hintText: "Price",
                      labelText: "Price"
                  ),
                ),
                new TextField(
                  controller:controllerStock,
                  decoration: new InputDecoration(
                      hintText: "Stock",
                      labelText: "Stock"
                  ),
                ),
                new Padding(padding: const EdgeInsets.all(10.0),),
                new RaisedButton(
                    child: new Text("ADD DATA"),
                    color: Colors.blueAccent,
                    onPressed: (){
                      addData();
                      Navigator.pop(context);

                    },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
