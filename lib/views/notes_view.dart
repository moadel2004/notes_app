import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';

import 'package:note_app/views/widgets/AddNoteBottomSheet.dart';
import 'package:note_app/views/widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              context: context,
              isScrollControlled: true,

              builder: (context) {
                return Padding(
                  // ✅ padding علشان يرفعها فوق الكيبورد
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: AddNoteBottom(),
                );
              },
            );
          },
          backgroundColor: const Color.fromARGB(255, 98, 183, 252),

          child: Icon(Icons.add),
        ),
        body: const NotesViewbody(),
      ),
    );
  }
}
