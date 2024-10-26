

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/features/home/data/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
