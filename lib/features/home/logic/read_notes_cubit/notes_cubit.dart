

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/home/data/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
      var notesBox = Hive.box<NoteModel>(Constants.kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    }
  }

