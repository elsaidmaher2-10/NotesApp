import 'package:hive/hive.dart';
part 'NoteModel.g.dart';

// id for database
@HiveType(typeId: 0)
class Notemodel extends HiveObject {
  Notemodel({
    required this.Color,
    required this.Title,
    required this.Subtitle,
    required this.dateTime,
  });
  @HiveField(0)
  String Title;
  @HiveField(1)
  String Subtitle;
  @HiveField(2)
  String dateTime;
  @HiveField(3)
  int Color;
}
