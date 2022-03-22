import 'package:flutter/material.dart';



class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Gallery',),

      ),
    body: Container(
      decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("images/gallery.jpg"),
    fit: BoxFit.cover,
    ),
    ),
    ),
    );
  }
}
