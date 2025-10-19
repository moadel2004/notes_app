import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Column(children: [CustomAppBar(), NoteItem()]),
    );
  }
}
