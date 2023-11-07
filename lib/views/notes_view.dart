import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/add_note_bottom_sheet.dart';
import 'package:notsapp/customs_widgets/custom_appbar.dart';

import '../customs_widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        appBartext: 'Notes',
        appbaricon: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8),),
              ),
              context: context,
              builder: (context) {
                return const AddNoateBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      body: const Column(
        children: [Expanded(child: NotesListview())],
      ),
    );
  }
}
