import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.black,
          child: const Icon(Icons.add, color: Colors.white, size: 32,),
        ),
      );
  }
}