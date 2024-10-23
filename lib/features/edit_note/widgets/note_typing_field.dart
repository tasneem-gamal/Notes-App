import 'package:flutter/material.dart';

class NoteTypingField extends StatelessWidget {
  const NoteTypingField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        maxLines: null,
        expands: true,
        decoration: InputDecoration(
          hintText: 'Type something....',
          border: InputBorder.none
        ),
        keyboardType: TextInputType.multiline,
      ),
    );
  }
}