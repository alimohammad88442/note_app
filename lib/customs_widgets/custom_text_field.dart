import 'package:flutter/material.dart';
import 'package:notsapp/constantes.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.height = 1});
  final String text;
  final int height;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
