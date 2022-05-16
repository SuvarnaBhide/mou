// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:mou_tracker/widgets/buttons.dart';
import 'package:mou_tracker/widgets/formFields.dart';
import '../widgets/mou_popup.dart';

class CreateMou2 extends StatefulWidget {
  const CreateMou2({ Key? key }) : super(key: key);

  @override
  State<CreateMou2> createState() => _CreateMou2State();
}

class _CreateMou2State extends State<CreateMou2> {

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
                          itemBuilder: (context,index){
                            return FormFields(text: "Field " + (index+1).toString());
                          }
                        ),
                        AppButton(text: "Choose File", newRoute: Container(), color: Colors.transparent),
                        AppButton(text: "Submit", newRoute: MoUPopUpDialog()),
                      ],
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}