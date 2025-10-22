import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isloading = false;
  addNote(NoteModel note) async {
    emit(AddNoteILoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);

      await notesbox.add(note);
      emit(AddNoteSuccess());
      print('✅ State: AddNoteSuccess');
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
