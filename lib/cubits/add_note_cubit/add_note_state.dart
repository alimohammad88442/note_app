part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoaginf extends AddNoteState {}

final class AddNotSuccess extends AddNoteState {}

final class AddNotefailure extends AddNoteState {
  final String errmessage;

  AddNotefailure({required this.errmessage});
}
