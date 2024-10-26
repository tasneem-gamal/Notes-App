import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/features/home/logic/read_notes_cubit/notes_cubit.dart';
import 'package:notes/features/home/widgets/custom_fab.dart';
import 'package:notes/features/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Scaffold(
        floatingActionButton: CustomFloatingActionButton(),
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}
