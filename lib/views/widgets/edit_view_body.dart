import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
titel: 'Edit Note',
icon: Icons.check,
          ),
            SizedBox(height: 50,),
          CustomTextFeild(hint: 'Titel'),
            SizedBox(height: 20,),
           CustomTextFeild(hint:'Content',maxLines: 6, ),
        ],
      ),
    );
  }
}