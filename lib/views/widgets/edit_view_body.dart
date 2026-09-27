import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar.dart';

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
        ],
      ),
    );
  }
}