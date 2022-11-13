import 'package:flutter/material.dart';

class InstructionWidget extends StatelessWidget {
  const InstructionWidget({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(description),
      ],
    );
  }
}
