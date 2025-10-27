import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(radius: 38, backgroundColor: Colors.blue);
  }
}

class ColorLLidtView extends StatelessWidget {
  const ColorLLidtView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ColorItem();
        },
      ),
    );
  }
}
