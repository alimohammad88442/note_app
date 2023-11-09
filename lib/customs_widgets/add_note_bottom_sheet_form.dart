import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/customs_widgets/colors_list_view.dart';
import 'package:notsapp/customs_widgets/custom_button.dart';
import 'package:notsapp/customs_widgets/custom_text_field.dart';
import 'package:notsapp/models/note_model.dart';

class NoteButtomSheetForm extends StatefulWidget {
  const NoteButtomSheetForm({
    super.key,
  });

  @override
  State<NoteButtomSheetForm> createState() => _NoteButtomSheetFormState();
}

class _NoteButtomSheetFormState extends State<NoteButtomSheetForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            text: 'Title',
            onSaved: (value) => title = value,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            text: 'SubTitle',
            height: 4,
            onSaved: (value) => subTitle = value,
          ),
         const SizedBox(height: 20,),
        const  ColorListViwe(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel = NoteModel(
                  title: title!,
                  subtitle: subTitle!,
                  data: DateTime.now().toString(),
                  color: Colors.red.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
