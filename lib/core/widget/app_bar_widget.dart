import 'package:flutter/material.dart';
import 'package:individual_meetup_app/core/theme/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  const AppBarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
              size: 36,
            )),
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Divider(
              color: AppTheme.submitBtn,
              height: 2,
            )));
  }
}
