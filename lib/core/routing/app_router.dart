import 'package:flutter/material.dart';
import 'package:notes/core/routing/routes.dart';
import 'package:notes/features/edit_note/edit_note_view.dart';
import 'package:notes/features/home/home_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case Routes.editView:
        return MaterialPageRoute(builder: (_) => const EditNoteView());

      default: 
        return null;
    }
  }
}