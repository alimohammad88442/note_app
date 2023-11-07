import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_bottom_sheet_form.dart';

class AddNoateBottomSheet extends StatelessWidget {
  const AddNoateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit (),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotefailure) {
              print('failure');
            } else if (state is AddNotSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoaginf ? true : false,
                child: const SingleChildScrollView(child: Newwidget()));
          },
        ),
      ),
    );
  }
}
