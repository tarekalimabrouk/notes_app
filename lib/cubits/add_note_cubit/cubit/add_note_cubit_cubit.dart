import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_file.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  
  addNote(NoteModel note) async {
    emit(AddNoteCubitLoding());
    try {
      
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      
      emit(AddNoteCubitSuccess());
      await notesBox.add(note);
    } catch (e) {
      
      AddNoteCubitFailure(e.toString());
    }
  }
}
