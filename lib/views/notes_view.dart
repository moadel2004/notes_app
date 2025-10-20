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
            isScrollControlled: true,

            builder: (context) {
              return Padding(
                // ✅ padding علشان يرفعها فوق الكيبورد
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const AddNoteBottom(),
              );
            },
          );
        },
        backgroundColor: const Color.fromARGB(255, 98, 183, 252),

        child: Icon(Icons.add),
      ),
      body: const NotesViewbody(),
    );
  }
}
