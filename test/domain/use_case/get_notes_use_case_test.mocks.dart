// Mocks generated by Mockito 5.3.2 from annotations
// in clean_note_app_2/test/domain/use_case/get_notes_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:clean_note_app_2/domain/model/note.dart' as _i4;
import 'package:clean_note_app_2/domain/repository/note_repository.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [NoteRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockNoteRepository extends _i1.Mock implements _i2.NoteRepository {
  MockNoteRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Note>> getNotes() => (super.noSuchMethod(
        Invocation.method(
          #getNotes,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Note>>.value(<_i4.Note>[]),
      ) as _i3.Future<List<_i4.Note>>);
  @override
  _i3.Future<_i4.Note?> getNoteById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getNoteById,
          [id],
        ),
        returnValue: _i3.Future<_i4.Note?>.value(),
      ) as _i3.Future<_i4.Note?>);
  @override
  _i3.Future<void> insertNote(_i4.Note? note) => (super.noSuchMethod(
        Invocation.method(
          #insertNote,
          [note],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> updateNote(_i4.Note? note) => (super.noSuchMethod(
        Invocation.method(
          #updateNote,
          [note],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteNote(_i4.Note? note) => (super.noSuchMethod(
        Invocation.method(
          #deleteNote,
          [note],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}
