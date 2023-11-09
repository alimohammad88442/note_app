import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.colors});
  final bool isSelected;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: isSelected ? 40 : 35,
      backgroundColor: colors,
    );
  }
}

class ColorListViwe extends StatefulWidget {
  const ColorListViwe({super.key});

  @override
  State<ColorListViwe> createState() => _ColorListViweState();
}

class _ColorListViweState extends State<ColorListViwe> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color.fromARGB(255, 255, 5, 39),
    Color(0Xff09bc8a),
    Color(0Xff508991),
    Color.fromARGB(255, 255, 255, 255),
    Color(0Xff241e4e),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).colors = colors[index];
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ColorItem(
                  colors: colors[index],
                  isSelected: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
