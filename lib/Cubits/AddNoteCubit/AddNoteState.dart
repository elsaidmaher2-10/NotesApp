class NoteState {} // الحالة الأساسية

class NoteAddingInitialState
    extends NoteState {} // الحالة الابتدائية عند بدء الإضافة

class NoteAddingLoadingState
    extends NoteState {} // عند تحميل البيانات أثناء الإضافة

class NoteAddingSuccessState extends NoteState {} // عند نجاح عملية الإضافة

class NoteAddingFailureState extends NoteState {
  NoteAddingFailureState({this.Error});
  String? Error;
} // عند فشل عملية الإضافة
