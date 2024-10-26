import 'package:flutter/material.dart';
import 'package:notes/core/theming/colors.dart';

class AddNoteDialogForm extends StatefulWidget {
  const AddNoteDialogForm({super.key});

  @override
  State<AddNoteDialogForm> createState() => _AddNoteDialogFormState();
}

class _AddNoteDialogFormState extends State<AddNoteDialogForm> {

  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String ? note;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextFormField(
              onSaved: (value){
                note = value;
              },
              validator: validateNoteInput,
              decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  label: const Text('type here')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    addButtonValidate();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManger.kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Add'
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  void addButtonValidate() {
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
    } else{
      autovalidateMode = AutovalidateMode.always;
      setState(() {
        
      });
    }
  }

  String? validateNoteInput(value){
              if(value?.isEmpty ?? true){
                return 'Field is required';
              } else{
                return null;
              }
            }
}