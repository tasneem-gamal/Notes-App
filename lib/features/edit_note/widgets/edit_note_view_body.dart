import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/edit_note/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.editPadding,
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(height: 24.h,),
          Expanded(
            child: Container(
              child: const TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: 'Type something....',
                  border: InputBorder.none
                ),
                keyboardType: TextInputType.multiline,
              ),
            ),
          )
        ],
      ),
    );
  }
}