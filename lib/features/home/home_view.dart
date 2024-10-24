import 'package:flutter/material.dart';
import 'package:notes/features/home/widgets/custom_fab.dart';
import 'package:notes/features/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}

