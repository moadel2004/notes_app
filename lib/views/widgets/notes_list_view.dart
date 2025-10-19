import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesListVeiw extends StatelessWidget {
  const NotesListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: NoteItem(),
        );
      },
    );
  }
}
