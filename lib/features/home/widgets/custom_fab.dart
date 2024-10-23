import 'package:flutter/material.dart';
import 'package:notes/core/theming/colors.dart';
import 'package:notes/core/theming/styles.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: (){
            customShowDialogAdd(context);
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add, color: Colors.white, size: 32,),
        ),
      );
  }

  void customShowDialogAdd(BuildContext context) {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'Add Note',
          style: Styles.textStyle18,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                label: const Text('type here')
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12, right: 12),
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManger.kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: const Text('Add')
            ),
          )
        ],
      )
    );
  }
}