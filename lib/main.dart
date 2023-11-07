import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/constantes.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/views/edit_note_view.dart';
import 'package:notsapp/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
 await Hive.openBox(kNotbox);
 Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
        
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
