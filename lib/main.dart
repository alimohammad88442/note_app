import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/bloc_simple_observer.dart';
import 'package:notsapp/constantes.dart';
import 'package:notsapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notsapp/models/note_model.dart';
import 'package:notsapp/views/edit_note_view.dart';
import 'package:notsapp/views/notes_view.dart';

void main() async {
  Bloc.observer = BlocSimpleObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotbox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotesCubit(),
        ),
      ],
      
    
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        routes: {
          NotesView.id: (context) => const NotesView(),
          EditNoteView.id: (context) =>  EditNoteView(),
        },
        initialRoute: NotesView.id,
      ),
    );
  }
}
