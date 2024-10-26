import 'package:flutter/material.dart';
import 'package:notes/core/routing/routes.dart';
import 'package:notes/features/edit_note/edit_note_view.dart';
import 'package:notes/features/home/home_view.dart';
import 'package:notes/features/home/logic/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AddNoteCubit(),
                  child: const HomeView(),
                ));

      case Routes.editView:
        return MaterialPageRoute(builder: (_) => const EditNoteView());

      default:
        return null;
    }
  }
}
