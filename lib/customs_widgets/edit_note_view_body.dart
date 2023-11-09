import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/customs_widgets/custom_appbar.dart';
import 'package:notsapp/customs_widgets/custom_text_field.dart';
import 'package:notsapp/models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.notes,
  });
  final NoteModel notes;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          appBartext: 'Edit',
          appBaricon: const Icon(Icons.check),
          ontap: () {
            widget.notes.title = title ?? widget.notes.title;
            widget.notes.subtitle = contant ?? widget.notes.subtitle;
            widget.notes.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 25),
          child: Column(
            children: [
              CustomTextField(
                text: 'title',
                height: 1,
                onChanged: (value) => title = value,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                text: 'contatn',
                height: 5,
                onChanged: (value) => contant = value,
              ),
            ],
          ),
        ));
  }
}
