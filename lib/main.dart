import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/constantes.dart';
import 'package:notsapp/views/edit_note_view.dart';
import 'package:notsapp/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(kNotbox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      routes: {
        NotesView.id: (context) =>const NotesView(),
        EditNoteView.id:(context) => const EditNoteView(),
      },
      initialRoute: NotesView.id,
    );
  }
}
