import 'package:flutter/material.dart';
import 'package:notes/core/routing/routes.dart';
import 'package:notes/features/home/home_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());

      default: 
        return null;
    }
  }
}