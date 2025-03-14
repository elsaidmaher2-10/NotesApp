import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Cubits/AddNoteCubit/AddNoteState.dart';

class AddNoteCubit extends Cubit<NoteState> {
  AddNoteCubit() : super(NoteAddingInitialState());
  AddNote(){

    
  }
}
