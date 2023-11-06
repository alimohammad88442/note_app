import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(text: 'title' , height: 1,),
        CustomTextField(text: 'body' , height: 4,)

      ],
    ) ;
  }
}