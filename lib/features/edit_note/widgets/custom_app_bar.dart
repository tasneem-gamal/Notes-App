import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/helpers/extension.dart';

import '../../../core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, this.onPressed,
  });
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            SizedBox(
              width: 12.w,
            ),
            Text(
              'Edit Note',
              style: Styles.textStyle18,
            )
          ],
        ),
        TextButton(
          onPressed: onPressed, 
          child: Text(
            'Done',
            style: Styles.textStyle18.copyWith(
              color: Colors.green
            ),
          )
        )
      ],
    );
  }
}