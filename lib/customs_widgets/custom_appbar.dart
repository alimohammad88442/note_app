import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
 const CustomAppBar({super.key,required this.appBartext,required this.appbaricon});
 final String appBartext;
final   Icon appbaricon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(appBartext,style: const TextStyle(fontSize: 30),),
      actions: [
        CustomSearchIcon(icon: appbaricon),
      ],
    );
  }
}