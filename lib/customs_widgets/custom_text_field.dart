import 'package:flutter/material.dart';
import 'package:notsapp/constantes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        border: outlineborder(),
        enabledBorder: outlineborder(),
        focusedBorder: outlineborder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder outlineborder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color:Color?? Colors.white)
      );
  }
}