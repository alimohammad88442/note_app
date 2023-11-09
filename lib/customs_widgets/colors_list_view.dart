import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 35,
      backgroundColor: Colors.red,
    );
  }
}
class ColorListViwe extends StatelessWidget {
  const ColorListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 *2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index){
        return const ColorItem();
      }),
    );
  }
}