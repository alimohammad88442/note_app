import 'package:flutter/material.dart';
import 'package:notsapp/models/note_model.dart';

import '../customs_widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, });
  static String id = 'EditPage';
 
  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Padding(
        padding:const EdgeInsets.symmetric(horizontal: 25),
        child: EditNoteViewBody(
          notes: note,
        ),
      );
  }
}
