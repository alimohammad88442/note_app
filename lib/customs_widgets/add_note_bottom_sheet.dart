import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_button.dart';
import 'package:notsapp/customs_widgets/custom_text_field.dart';

class AddNoateBottomSheet extends StatelessWidget {
  const AddNoateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(text: 'Title'),
            SizedBox(
              height: 10,
            ),
            CustomTextField(text: 'content', height: 4),
            SizedBox(
              height: 20,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
