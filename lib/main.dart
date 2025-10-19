import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
