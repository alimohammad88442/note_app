import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,indix){      
      return const NoteItem();
    });
  }
}