class RemoveNoteState {}

class RemoveNoteInitialState extends RemoveNoteState {} // الحالة الابتدائية

class RemoveNoteLoadingState extends RemoveNoteState {} // عند بدء عملية الحذف

class RemoveNoteSuccessState extends RemoveNoteState {} // عند نجاح الحذف

class RemoveNoteFailureState extends RemoveNoteState {} // عند فشل الحذف
