import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_appbar.dart';

import '../customs_widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(appBartext: 'Edit', appbaricon:Icon(Icons.abc),),
      body: EditNoteViewBody() ,
    );
  }
}
