import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Cubits/AddNoteCubit/AddNoteCubit.dart';
import 'package:notesapp/Model/NoteModel.dart';
import 'package:notesapp/Views/HomeScreen.dart';

void main() {
  Hive.initFlutter();
  Hive.registerAdapter(NotemodelAdapter());
  Hive.openBox("DATA1");

  runApp(Notesapp());
}

class Notesapp extends StatelessWidget {
  const Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeData.dark() is used to make them dark
    //
    return BlocProvider<AddNoteCubit>(
      create: (context) => AddNoteCubit(),
      child: MaterialApp(
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
      ),
    );
  }
}
