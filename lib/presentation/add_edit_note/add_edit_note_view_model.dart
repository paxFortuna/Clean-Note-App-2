import 'package:clean_note_app_2/domain/model/note.dart';
import 'package:clean_note_app_2/domain/repository/note_repository.dart';
import 'package:clean_note_app_2/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:flutter/material.dart';


class AddEditNoteViewModel with ChangeNotifier {
  // mvvm 방식, use_case 사용한함
  final NoteRepository repository;

  int _color = Colors.orange.value;
  int get color => _color;

  AddEditNoteViewModel(this.repository);

  void onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: _changeColor,
      saveNote:_saveNote,
    );
  }

  Future<void> _changeColor(int color) async{
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content, int color, int timestamp) async {
    if (id == null) {
      await repository.insertNote(Note(
        title: title,
        content: content,
        color: _color,
        timestamp: DateTime.now().millisecondsSinceEpoch,),
      );
    } else {
      // updateNote 경우 id를 알고 있다.
      await repository.updateNote(Note(
        id: id,
        title: title,
        content: content,
        color: _color,
        timestamp: DateTime.now().millisecondsSinceEpoch,),
      );
    }
  }
}