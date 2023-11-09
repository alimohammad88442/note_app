import 'package:flutter/material.dart';
import 'package:notsapp/customs_widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
 const CustomAppBar({super.key,required this.appBartext,required this.appBaricon, this.ontap});
 final String appBartext;
final   Icon appBaricon;
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:const Color(0xff303030),
        elevation: 0,
        title: Text(appBartext,style: const TextStyle(fontSize: 30),),
        actions: [
          
         CustomAppBarIcon(icon: appBaricon , ontap: ontap ,),
        ],
      ),
    );
  }
  
 @override
  Size get preferredSize => const Size.fromHeight(64);
}