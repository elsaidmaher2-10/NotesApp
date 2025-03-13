import 'package:flutter/material.dart';
import 'package:notesapp/components/Bottomsheetcomponen.dart';

class Editviewnote extends StatelessWidget {
  const Editviewnote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Customtextfiled(hint: "Title"),
          SizedBox(height: 20),
          Customtextfiled(hint: "Content", maxlines: 5),
        ],
      ),
    );
  }
}
