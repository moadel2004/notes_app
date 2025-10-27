import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitlel = content ?? widget.note.subTitlel;
              widget.note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edits Notes',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          Customtextfield(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
            maxLines: 1,
          ),
          const SizedBox(height: 16),
          Customtextfield(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitlel,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
