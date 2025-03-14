import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Views/HomeScreen.dart';

const Dtabase = "DATA1";
void main() {
  Hive.initFlutter();
  Hive.openBox(Dtabase);
  runApp(Notesapp());
}

class Notesapp extends StatelessWidget {
  const Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeData.dark() is used to make them dark
    //
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily, // ✅ الحل الصحيح
        scaffoldBackgroundColor: Colors.grey[900],

        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
