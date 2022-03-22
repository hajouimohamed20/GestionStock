import 'package:flutter/material.dart';
import './galery.dart';
import './quiz.dart';
import './meteo.dart';


void main() => runApp(MaterialApp(home: MyApp(),));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sofia-FH',style: TextStyle(fontSize: 30),)),
        flexibleSpace: Image(
          image: AssetImage('images/bg.jpg'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 150,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                //  gradient: LinearGradient(colors: [Colors.deepOrange]),
                //color: Colors.deepOrange,
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.white,
                    ],
                  )
              ),



              child: Center(
                child: CircleAvatar(

                  radius: 50,
                  backgroundImage: AssetImage('images/logo.png'),
                ),
              ),
            ),

            Divider(
              color: Theme.of(context).primaryColor,
            ),

            ListTile(
              title: const Text('Weather',style: TextStyle(fontSize: 22,color: Colors.blue),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Meteo()));
                // Update the state of the app.
                // ...
              },
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            ListTile(
              title: const Text('Gallery',style: TextStyle(fontSize: 22,color: Colors.blue)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Gallery()));
              },

            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            ListTile(
              title: const Text('Store',style: TextStyle(fontSize: 22,color: Colors.blue)),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Quiz()));
              },

            ),
          ],
        ),
      ),
    body: const Center(

    child: Text('Hello World'),
    )
    );

  }
}
