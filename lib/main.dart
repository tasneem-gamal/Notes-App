import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/core/helpers/simple_bloc_observer.dart';
import 'package:notes/core/routing/app_router.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/home/data/note_model.dart';
import 'package:notes/notes.dart';

void main() async {
  
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();

  await Hive.openBox<NoteModel>(Constants.kNotesBox);

  Hive.registerAdapter(NoteModelAdapter());

  runApp(Notes(appRouter: AppRouter()));
}

