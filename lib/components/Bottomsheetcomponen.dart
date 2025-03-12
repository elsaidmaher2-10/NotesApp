import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 40),
          Padding(padding: const EdgeInsets.all(8.0), child: Customtextfiled()),
        ],
      ),
    );
  }
}

class Customtextfiled extends StatelessWidget {
  const Customtextfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),

      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "title",
        hintStyle: TextStyle(color: Colors.cyanAccent, fontSize: 20),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
