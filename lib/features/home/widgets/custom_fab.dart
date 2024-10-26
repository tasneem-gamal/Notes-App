import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/features/home/logic/add_note_cubit/add_note_cubit.dart';
import 'package:notes/features/home/widgets/add_note_dialog.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => BlocProvider(
              create: (_) => AddNoteCubit(),
              child: const AddNoteDialog(),
            ),
            );
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}


