import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/constantes.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only( bottom: 20),
          child: GestureDetector(
            onTap: onTap,
            child: state is AddNoteLoaging ? const CircularProgressIndicator() : Container(
                decoration: BoxDecoration(
                    color: kprimarycolor, borderRadius: BorderRadius.circular(8)),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: const Center(
                  child: Text('add'),
                ),),
          ),
        );
      },
    );
  }
}
