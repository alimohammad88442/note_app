import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/customs_widgets/note_item.dart';
import 'package:notsapp/models/note_model.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, indix) {
            return  NoteItem( notes: notes[indix],);
          }),
        );
      },
    );
  }
}
