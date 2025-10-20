import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/CustomTextField.dart';
import 'package:note_app/views/widgets/customBottom.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          Customtextfield(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(height: 16),
          Customtextfield(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          Custombottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
