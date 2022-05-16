// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:mou_tracker/widgets/buttons.dart';
import 'package:mou_tracker/widgets/formFields.dart';
import 'X-20.dart';

class CreateMou extends StatefulWidget {
  const CreateMou({ Key? key }) : super(key: key);

  @override
  State<CreateMou> createState() => _CreateMouState();
}

class _CreateMouState extends State<CreateMou> {

  //form key
  var myKey = GlobalKey<FormState>();

  //editing controllers
  final fieldsEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //'Create MoU' text header
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 30),
              child: Text(
                "CREATE MOU",
                style: TextStyle(
                  fontSize: 44
                ),
              ),
            ),
            //Text Fields for various data inputs
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 36, right: 36),
                  child: Form(
                    key: myKey,
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index){
                            return FormFields(
                              text: "Field " + (index+1).toString()
                            );
                          }
                        ),
                        AppButton(text: "Next", newRoute: CreateMou2()),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40)
          ],
        ),
      )
    );
  }
}