import 'package:flutter/material.dart';

class NoteTypingField extends StatelessWidget {
  const NoteTypingField({
    super.key, this.onChanged, required this.initialValue,
  });
  final Function(String)? onChanged;
  final String initialValue;
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: initialValue);
    return Expanded(
      child: TextField(
        controller: controller,
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