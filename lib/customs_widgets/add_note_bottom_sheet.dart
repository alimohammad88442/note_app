import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_text_field.dart';

class AddNoateBottomSheet extends StatelessWidget {
  const AddNoateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(20.0),
      child:  Column(
        children: [
          CustomTextField()
        ],
      ),
    ) ;
  }
}