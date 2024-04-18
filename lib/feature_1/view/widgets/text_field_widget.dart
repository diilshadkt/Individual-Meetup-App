import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:individual_meetup_app/core/theme/app_theme.dart';

class TextFieldWidget extends StatelessWidget {
  final String upperText;
  final String hintText;
  final String lowerText;
  final TextEditingController controller;
  const TextFieldWidget({
    super.key,
    required this.upperText,
    required this.hintText,
    required this.lowerText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            upperText,
            style: const TextStyle(
              color: AppTheme.text,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
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
        SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            lowerText,
            style: const TextStyle(
              color: AppTheme.button,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
