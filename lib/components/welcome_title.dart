import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  final String text;
  const WelcomeTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10),
      child: Row(
        children: [
          Text(text,
              style:
                  const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
