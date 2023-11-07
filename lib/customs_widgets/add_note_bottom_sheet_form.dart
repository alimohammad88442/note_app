import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notsapp/customs_widgets/custom_button.dart';
import 'package:notsapp/customs_widgets/custom_text_field.dart';
import 'package:notsapp/models/note_model.dart';

class Newwidget extends StatefulWidget {
  const Newwidget({
    super.key,
  });

  @override
  State<Newwidget> createState() => _NewwidgetState();
}

class _NewwidgetState extends State<Newwidget> {
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
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel = NoteModel(title: title!, subtitle: subTitle!, data: DateTime.now().toString(), color: Colors.black.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
