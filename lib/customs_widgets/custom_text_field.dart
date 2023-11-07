import 'package:flutter/material.dart';
import 'package:notsapp/constantes.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.height = 1, this.onSaved});
  final String text;
  final int height;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return'this field required';
        }else{
          return null;
        }
      },
      maxLines: height ,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: text,
        border: outlineborder(),
        enabledBorder: outlineborder(),
        focusedBorder: outlineborder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder outlineborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
