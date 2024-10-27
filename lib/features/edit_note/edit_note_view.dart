import 'package:flutter/material.dart';
import 'package:notes/features/edit_note/widgets/edit_note_view_body.dart';
import 'package:notes/features/home/data/note_model.dart';


class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: EditNoteViewBody(noteModel: note,)),
    );
  }
}