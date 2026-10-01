import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/Edit_Note_Colors_List.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.titel = title ?? widget.note.titel;
              widget.note.subTitel = content ?? widget.note.subTitel;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            titel: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextFeild(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.titel,
          ),
          SizedBox(height: 20),
          CustomTextFeild(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitel,
            maxLines: 6,
          ),
          EditNoteColorsList(note: widget.note,),
        ],
      ),
    );
  }
}
