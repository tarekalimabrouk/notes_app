import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_note_Item.dart';
import 'package:notes/views/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50,),
      CustomAppBar(),
      CustomNoteItem(),
        ],
      ),
    );
  }
}

