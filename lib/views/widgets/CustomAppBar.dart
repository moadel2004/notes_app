import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 32)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
