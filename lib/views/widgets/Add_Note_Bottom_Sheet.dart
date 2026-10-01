import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes/cubits/add_note_cubit/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes/views/widgets/add_node_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubitCubit())],
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitFailure) {
            print('failied ${state.errMessage}');
          }

          if (state is AddNoteCubitSuccess) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();

            Navigator.pop(context);
          }
        },

        builder: (context, State) {
          return AbsorbPointer(
            absorbing: State is AddNoteCubitLoding ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),

              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    ); // Padding
  }
}
