import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [SizedBox(height: 32), Customtextfield()]),
    );
  }
}
