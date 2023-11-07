import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notsapp/models/note_model.dart';

import '../../constantes.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes(){
    var notesBox = Hive.box<NoteModel>(kNotbox);
    List<NoteModel> notes = notesBox.values.toList();
    emit(NotesSuccess(notes: notes));
  }
}
