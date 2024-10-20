import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/theming/styles.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/home/widgets/note_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homePadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notes',
              style: Styles.textStyle24,
            ),
            SizedBox(height: 24.h,),
            NoteItem()
          ],
        ),
      ),
    );
  }
}

