import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/core/routing/app_router.dart';
import 'package:notes/core/widgets/constants.dart';
import 'package:notes/features/home/data/note_model.dart';
import 'package:notes/notes.dart';

void main() async {
  
  await Hive.initFlutter();

  await Hive.openBox(Constants.kNotesBox);

  Hive.registerAdapter(NoteModelAdapter());

  runApp(Notes(appRouter: AppRouter()));
}

