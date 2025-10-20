import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/AddNoteBottomSheet.dart';
import 'package:note_app/views/widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottom();
            },
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: const NotesViewbody(),
    );
  }
}
