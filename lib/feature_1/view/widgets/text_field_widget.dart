import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(15, 17, 7, 17),
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(color: Colors.grey, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(13))),
      ),
    );
  }
}
