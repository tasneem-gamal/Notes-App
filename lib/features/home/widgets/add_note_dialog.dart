import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/core/helpers/extension.dart';
import 'package:notes/core/theming/styles.dart';
import 'package:notes/features/home/logic/add_note_cubit/add_note_cubit.dart';
import 'package:notes/features/home/logic/read_notes_cubit/notes_cubit.dart';
import 'package:notes/features/home/widgets/add_note_dialog_form.dart';

class AddNoteDialog extends StatelessWidget {
  const AddNoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
            if(state is AddNoteFailure){}

            if(state is AddNoteSuccess){
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              context.pop();
            }
          },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddNoteLoading ? true : false,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: Text(
              'Add Note',
              style: Styles.textStyle18,
            ),
            actions: const [AddNoteDialogForm()],
          ),
        );
      },
    );
  }
}
