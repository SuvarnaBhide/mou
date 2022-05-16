// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormFields extends StatelessWidget {

  final String text, hintText;


  const FormFields({ Key? key, required this.text, this.hintText = "Enter data"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: 2),
        TextFormField(
          autofocus: false,
          //controller: ,
          //validator: (){}
          //onSaved: (value){},
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: hintText,
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}