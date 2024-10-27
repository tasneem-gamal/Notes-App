import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
  String note;
  @HiveField(1)
  final String date;
  @HiveField(2)
  final String time;

  NoteModel({
    required this.note, 
    required this.date, 
    required this.time
  });
  
}