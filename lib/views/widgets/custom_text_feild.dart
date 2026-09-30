import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_file.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
  { this.onSaved,
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.autofocus = false,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final bool autofocus;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
