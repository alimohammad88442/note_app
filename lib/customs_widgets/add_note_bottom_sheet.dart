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
        child: Newwidget(),
      ),
    );
  }
}

class Newwidget extends StatefulWidget {
  const Newwidget({
    super.key,
  });

  @override
  State<Newwidget> createState() => _NewwidgetState();
}

class _NewwidgetState extends State<Newwidget> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            text: 'Title',
            onSaved: (value) => title = value,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            text: 'SubTitle',
            height: 4,
            onSaved: (value) => subTitle = value,
          ),
          const SizedBox(
            height: 20,
          ),
           CustomButton( onTap: (){
            if (formkey.currentState!.validate()) {
              formkey.currentState!.save();
            }else{
              autovalidateMode= AutovalidateMode.always;
              setState(() {
                
              });
            }
           },),
        ],
      ),
    );
  }
}
