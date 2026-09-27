
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextFeild(
              hint: 'titel',
            ),
        SizedBox(height: 16,),
             CustomTextFeild(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(height: 50,),
            CustomButton(),
              SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
