import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_appbar.dart';

import '../customs_widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child:  const Icon(Icons.add , size: 40,),
      ),
      appBar: const CustomAppBar(
        appBartext: 'Notes',
        appbaricon: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: const Column(
        children: [Expanded(child: NotesListview())],
      ),
    );
  }
}
