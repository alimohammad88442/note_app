import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_bottom_sheet_form.dart';

class AddNoateBottomSheet extends StatelessWidget {
  const AddNoateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom
            ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotefailure) {
            } else if (state is AddNotSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoaging ? true : false,
              child: const SingleChildScrollView(
                child: NoteButtomSheetForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
