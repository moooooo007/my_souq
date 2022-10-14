import 'package:flutter/material.dart';
import 'package:my_souq/componnents/declarations.dart';

class  textfieldcustom extends StatelessWidget  {
    String labeltext;
    bool security;
    Icon icontag;
    textfieldcustom({required this.labeltext,required this.security,required this.icontag});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:security ,
     decoration: InputDecoration(
       suffixIcon:icontag,
       labelText: (labeltext),
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xff335c67)
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: declarations.unselectedNavBarColor,
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
    color: declarations.selectedNavBarColor,
      )
    ),
    )
    );
  }
}
