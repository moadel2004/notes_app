import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/CustomTextField.dart';
import 'package:note_app/views/widgets/customBottom.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            Customtextfield(hint: 'Title'),
            SizedBox(height: 16),
            Customtextfield(hint: 'content', maxLines: 5),
            SizedBox(height: 16),
            Custombottom(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
