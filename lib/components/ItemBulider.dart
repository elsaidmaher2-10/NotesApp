import 'package:flutter/material.dart';
import 'package:notesapp/components/NotesItem.dart';

// ignore: must_be_immutable
class NoteBUlider extends StatelessWidget {

  List<Color> colors = [
    Color(0xFF00FF00), // أخضر
    Color(0xFFFFFF00), // أصفر
    Color(0xFF00FFFF), // سماوي
    Color(0xFFFF00FF), // أرجواني
    Color(0xFFFFFFFF), // أبيض
    Color(0xFF808080), // رمادي
    Color(0xFFFFA500), // برتقالي
    Color(0xFFFFC0CB), // وردي
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, count) {
        return Customnotes(color: colors[count % colors.length]);
      },
      separatorBuilder: (context, count) {
        return SizedBox(height: 10);
      },
      itemCount: 10,
    );
  }
}
