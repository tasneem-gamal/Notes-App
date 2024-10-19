import 'package:flutter/material.dart';
import 'package:notes/core/theming/styles.dart';
import 'package:notes/core/widgets/constants.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homePadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Notes',
              style: Styles.textStyle18,
            )
          ],
        ),
      ),
    );
  }
}