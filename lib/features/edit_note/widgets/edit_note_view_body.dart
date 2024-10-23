import 'package:flutter/material.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/edit_note/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.editPadding,
      child: const Column(
        children: [
          CustomAppBar()
        ],
      ),
    );
  }
