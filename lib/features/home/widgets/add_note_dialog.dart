import 'package:flutter/material.dart';
import 'package:notes/core/theming/styles.dart';
import 'package:notes/features/home/widgets/add_note_dialog_form.dart';

class AddNoteDialog extends StatelessWidget {
  const AddNoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        'Add Note',
        style: Styles.textStyle18,
      ),
      actions: const [
        AddNoteDialogForm()
      ],
    );
  }
}

