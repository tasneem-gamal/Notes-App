import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/helpers/extension.dart';
import 'package:notes/core/routing/routes.dart';
import 'package:notes/core/theming/colors.dart';
import 'package:notes/core/theming/styles.dart';
import 'package:notes/features/home/data/note_model.dart';
import 'package:notes/features/home/logic/read_notes_cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key, required this.noteModel,
  });
  
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(Routes.editView, arguments: noteModel);
      },
      child: Container(
        width: 160.w,
        height: 200.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          color: ColorManger.kPrimaryColor
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                noteModel.date,
                style: Styles.textStyle18.copyWith(color: Colors.white),
              ),
              SizedBox(height: 8.h,),
              Text(
                noteModel.time,
                style: Styles.textStyle18.copyWith(color: Colors.white),
              ),
              SizedBox(height: 8.h,),
              Text(
                noteModel.note,
                style: Styles.textStyle16.copyWith(
                  color: Colors.white
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: IconButton(
                  onPressed: (){
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  }, 
                  icon: const Icon(Icons.delete)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}