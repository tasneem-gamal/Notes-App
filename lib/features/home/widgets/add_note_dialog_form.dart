import 'package:flutter/material.dart';
import 'package:notes/core/theming/colors.dart';

class AddNoteDialogForm extends StatelessWidget {
  const AddNoteDialogForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                label: const Text('type here')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManger.kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Add'
                  ),
                )),
          ),
        )
      ],
    );
  }
}