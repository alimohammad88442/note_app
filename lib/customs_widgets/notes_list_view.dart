import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: ListView.builder(itemBuilder: (context,indix){      
        return const NoteItem();
      }),
    );
  }
}