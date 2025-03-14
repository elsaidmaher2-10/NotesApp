import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Cubits/AddNoteCubit/AddNoteState.dart';
import 'package:notesapp/Model/NoteModel.dart';

class AddNoteCubit extends Cubit<NoteState> {
  AddNoteCubit() : super(NoteAddingInitialState());

  AddNote(Notemodel note) async {
    emit(NoteAddingLoadingState());
    try {
      Box box = Hive.box<Notemodel>("DATA1");
      await box.add(note);
      emit(NoteAddingSuccessState());
    } catch (Ex) {
      emit(NoteAddingFailureState(Error: Ex.toString()));
    }
  }
}
