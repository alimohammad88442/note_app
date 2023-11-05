import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,

      decoration: BoxDecoration(
      color: Colors.white  
      ),
      child: Center(child: IconButton(onPressed: (){}, icon: icon )),
    );
  }
}