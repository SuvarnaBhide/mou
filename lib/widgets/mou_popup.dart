// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mou_tracker/screens/X-19.dart';
import 'package:mou_tracker/widgets/buttons.dart';

class MoUPopUpDialog extends StatefulWidget {
  const MoUPopUpDialog ({ Key? key }) : super(key: key);

  @override
  State<MoUPopUpDialog > createState() => _MoUPopUpDialogState();
}

class _MoUPopUpDialogState extends State<MoUPopUpDialog> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:Padding(
        padding: const EdgeInsets.only(top: 36),
        child: Center(
          child: Text(
            "MOU CREATED",
            style: TextStyle(fontSize: 35),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      content: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //tick mark icon
                Container(
                  width: 107, height: 107,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    shape: BoxShape.circle
                  ),
                  child: Center(child: Icon(Icons.done_all, size: 60, color: Colors.green))
                ),
                SizedBox(height: 40),
                Text("We have recieved your request! Please wait till we verify your details.", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                Text("In the meanwhile, you can track your request, by clicking on the button below!", textAlign: TextAlign.center),
                SizedBox(height: 30),
                AppButton(text: "TRACK", newRoute: CreateMou())
              ],
            ),
          ),
        ),
      ),
    );
  }
}