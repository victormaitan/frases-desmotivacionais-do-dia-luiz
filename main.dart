import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Container(
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      /*
      * contain, cover, fill, fitHeight,
      * fitWidth, none, scaleDown
      * */
      child: Image.asset(
        "images/mesa.jpg",
        fit: BoxFit.scaleDown,
      ) ,
    ),
  ));

}