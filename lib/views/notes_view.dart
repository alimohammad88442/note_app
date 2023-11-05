import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_appbar.dart';
import 'package:notsapp/customs_widgets/note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        appBartext: 'Notes',
        appbaricon: Icon(Icons.search , color: Colors.white, size: 30,),
      ),
     body: NoteItem() ,
    );
  }
}
