import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/core/routing/routes.dart';
import 'package:notes/features/edit_note/edit_note_view.dart';
import 'package:notes/features/home/data/note_model.dart';
import 'package:notes/features/home/home_view.dart';
import 'package:notes/features/home/logic/add_note_cubit/add_note_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final argument =  settings.arguments;
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AddNoteCubit(),
                  child: const HomeView(),
                ));

      case Routes.editView:
        if (argument is NoteModel) {
          return MaterialPageRoute(
            builder: (_) => EditNoteView(note: argument),
          );
        } else {
          return null;
        }

      default:
        return null;
    }
  }
}
