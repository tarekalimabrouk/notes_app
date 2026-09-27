import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_file.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kPrimaryColor ,
      decoration: InputDecoration(
        helperText: 'Titel',
        helperStyle: TextStyle(
          color: kPrimaryColor
        ),
        border: buildBorder(),
        enabledBorder:buildBorder(),
  focusedBorder: buildBorder(kPrimaryColor)
        ));
  }

  OutlineInputBorder buildBorder([color]) {
  return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color:color?? Colors.white),
    );
  }
}
