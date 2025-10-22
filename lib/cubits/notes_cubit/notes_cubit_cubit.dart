import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchAllNotes() async {
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notes = notesbox.values.toList();
      emit(NotesCubitSuccess(notes));
      print('✅ State: AddNoteSuccess');
    } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
