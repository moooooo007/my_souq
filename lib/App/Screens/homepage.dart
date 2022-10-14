import 'package:flutter/material.dart';
import 'package:my_souq/App/Widgit/textfield_custom.dart';
import 'package:my_souq/componnents/declarations.dart';

class homepage extends StatefulWidget {
  static const routename = "homepage";

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
bool showpassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Souq",
          style: TextStyle(
              color: declarations.unselectedNavBarColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: declarations.backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: declarations.unselectedNavBarColor,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text("Sign In",style: TextStyle(color:declarations.secondaryColor,fontSize: 18,fontWeight: FontWeight.bold ),),
                SizedBox(height: 20,),
                textfieldcustom(labeltext:"Enter Your Email",security: false,icontag:Icon (Icons.keyboard_alt_outlined),),
                SizedBox(height: 20,),
                textfieldcustom(labeltext:"Password",security:showpassword==false ? true : false,icontag:Icon (Icons.key),),
                SizedBox(height: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                 Checkbox(
                   value: showpassword,
                   onChanged: (bool? value) {
                  setState(() {
                    showpassword = value!;
                   });
                    },

                  ),
                    Text("Show My Password",style: TextStyle(fontWeight: FontWeight.bold),),

            ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
