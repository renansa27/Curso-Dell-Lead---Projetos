// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskModel on _TaskModelBase, Store {
  final _$taskTitleAtom = Atom(name: '_TaskModelBase.taskTitle');

  @override
  String get taskTitle {
    _$taskTitleAtom.reportRead();
    return super.taskTitle;
  }

  @override
  set taskTitle(String value) {
    _$taskTitleAtom.reportWrite(value, super.taskTitle, () {
      super.taskTitle = value;
    });
  }

  final _$_TaskModelBaseActionController =
      ActionController(name: '_TaskModelBase');

  @override
  dynamic setTextTitle(String text) {
    final _$actionInfo = _$_TaskModelBaseActionController.startAction(
        name: '_TaskModelBase.setTextTitle');
    try {
      return super.setTextTitle(text);
    } finally {
      _$_TaskModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
taskTitle: ${taskTitle}
    ''';
  }
}
