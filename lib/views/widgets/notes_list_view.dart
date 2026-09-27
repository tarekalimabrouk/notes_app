import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_note_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const CustomNoteItem();
      },
    );
  }
}
