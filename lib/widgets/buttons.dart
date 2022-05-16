// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  Color color;
  final String text;
  final Widget newRoute;


  AppButton({ Key? key, required this.text, required this.newRoute, this.color = Colors.grey }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.zero,
      child: MaterialButton(
        color: color,
        padding: EdgeInsets.fromLTRB(10, 8, 8, 10),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => newRoute));
        },
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ))
      ),
    );
  }
}