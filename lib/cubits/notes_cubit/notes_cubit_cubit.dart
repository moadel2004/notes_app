import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesbox = Hive.box<NoteModel>(kNotesBox);

    notes = notesbox.values.toList();
    emit(NotesSuccess());
    print('✅ State: AddNoteSuccess');
  }
}
