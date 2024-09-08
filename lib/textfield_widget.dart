import 'package:flutter/material.dart';

Widget myTextFieldWidget(
    TextEditingController textEditingController, Function ageUpdate, String hintText) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: textEditingController,
      decoration:  InputDecoration(hintText: hintText),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        print(textEditingController.text);
        int x = int.parse(textEditingController.text.toString());
        ageUpdate(x);
      },
    ),
  );
}
