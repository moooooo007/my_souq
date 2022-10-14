import 'package:flutter/material.dart';
class homepage extends StatelessWidget {

  static const routename = "homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         title: Text("My Souq",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      ),

    );
  }
}
