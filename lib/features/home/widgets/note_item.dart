import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/theming/styles.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 180.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
        color: Colors.red
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: Styles.textStyle18.copyWith(color: Colors.white),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 240, 177, 173)
                  ),
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.edit, color: Colors.black,)
                  ),
                )
              ],
            ),
            Text(
              '8:00 PM',
              style: Styles.textStyle18.copyWith(
                color: Colors.white
              ),
            ),
            SizedBox(height: 8.h,),
            Text(
              'Doctor Appointmet bla bla blka',
              style: Styles.textStyle16.copyWith(
                color: Colors.white
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}