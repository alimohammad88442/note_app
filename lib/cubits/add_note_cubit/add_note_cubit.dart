import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notsapp/constantes.dart';
import 'package:notsapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color colors = const Color.fromARGB(255, 255, 5, 39);
  addNote(NoteModel note) async {
    note.color = colors.value;
    emit(AddNoteLoaging());
    try {
      var noteBox = Hive.box<NoteModel>(kNotbox);
      await noteBox.add(note);
      emit(AddNotSuccess());
    } catch (e) {
      emit(AddNotefailure(errmessage: e.toString()));
    }
  }
}
