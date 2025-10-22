import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesListVeiw extends StatelessWidget {
  const NotesListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubitCubit>(
          context,
        ).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
