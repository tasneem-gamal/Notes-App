import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/features/home/logic/read_notes_cubit/notes_cubit.dart';
import 'package:notes/features/home/widgets/note_item.dart';

class NoteItemGridView extends StatelessWidget {
  const NoteItemGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Expanded(
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
              itemCount: 10,
              itemBuilder: (context, index) => const NoteItem()),
        );
      },
    );
  }
}
