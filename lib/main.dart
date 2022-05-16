// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mou_tracker/screens/X-19.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreateMou(),
    );
  }
}
