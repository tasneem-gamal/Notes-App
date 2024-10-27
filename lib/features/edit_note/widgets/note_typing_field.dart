import 'package:flutter/material.dart';

class NoteTypingField extends StatelessWidget {
  const NoteTypingField({
    super.key, this.onChanged,
  });
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        onChanged: onChanged,
        maxLines: null,
        expands: true,
        decoration: const InputDecoration(
          hintText: 'Type something....',
          border: InputBorder.none
        ),
        keyboardType: TextInputType.multiline,
      ),
    );
  }
}