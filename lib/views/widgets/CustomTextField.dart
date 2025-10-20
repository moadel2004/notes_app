import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hint: Text('Title', style: TextStyle(color: KprimaryColor)),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
