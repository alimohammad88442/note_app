import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({super.key, required this.icon, this.ontap});
final Icon icon;
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: 40,
        width: 40,
    
        decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(14),
        ),
        child: Center(child: IconButton(onPressed: ontap, icon: icon )),
      ),
    );
  }
}