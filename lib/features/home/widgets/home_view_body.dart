import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/theming/styles.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/home/logic/read_notes_cubit/notes_cubit.dart';
import 'package:notes/features/home/widgets/note_item_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notes',
            style: Styles.textStyle24,
          ),
          SizedBox(height: 24.h,),
          const NoteItemGridView()
        ],
      ),
    );
  }
}

