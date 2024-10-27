import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/helpers/extension.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/edit_note/widgets/custom_app_bar.dart';
import 'package:notes/features/edit_note/widgets/note_typing_field.dart';
import 'package:notes/features/home/data/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.editPadding,
      child: Column(
        children: [
          CustomAppBar(
            onPressed: (){
              widget.noteModel.note = note ?? widget.noteModel.note;
              widget.noteModel.save();
              context.pop();
            },
          ),
          SizedBox(height: 24.h,),
          NoteTypingField(
            onChanged: (value){
              note = value;
            },
          )
        ],
      ),
    );
  }
}

