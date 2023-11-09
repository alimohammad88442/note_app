
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';

import 'package:notsapp/models/note_model.dart';

import 'package:notsapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNoteView.id,arguments: notes);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
              color: Color(notes.color),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(
                  notes.title,
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    notes.subtitle,
                    style:const TextStyle(color: Colors.black , fontSize: 18 , fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Text(
                  notes.data,
                  style: const TextStyle(color: Colors.black, fontSize: 18 ,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
