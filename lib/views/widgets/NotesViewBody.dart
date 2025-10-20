import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';

import 'package:note_app/views/widgets/notes_list_view.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(child: NotesListVeiw()),
        ],
      ),
    );
  }
}
