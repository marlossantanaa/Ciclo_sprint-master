// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoController on TodoControllerBase, Store {
  late final _$todoAtom =
      Atom(name: 'TodoControllerBase.todo', context: context);

  @override
  Todo? get todo {
    _$todoAtom.reportRead();
    return super.todo;
  }

  @override
  set todo(Todo? value) {
    _$todoAtom.reportWrite(value, super.todo, () {
      super.todo = value;
    });
  }

  late final _$todoControllerAtom =
      Atom(name: 'TodoControllerBase.todoController', context: context);

  @override
  TextEditingController get todoController {
    _$todoControllerAtom.reportRead();
    return super.todoController;
  }

  @override
  set todoController(TextEditingController value) {
    _$todoControllerAtom.reportWrite(value, super.todoController, () {
      super.todoController = value;
    });
  }

  late final _$todoRepositoryAtom =
      Atom(name: 'TodoControllerBase.todoRepository', context: context);

  @override
  TodoRepository get todoRepository {
    _$todoRepositoryAtom.reportRead();
    return super.todoRepository;
  }

  @override
  set todoRepository(TodoRepository value) {
    _$todoRepositoryAtom.reportWrite(value, super.todoRepository, () {
      super.todoRepository = value;
    });
  }

  late final _$deleteTodoPositionAtom =
      Atom(name: 'TodoControllerBase.deleteTodoPosition', context: context);

  @override
  int? get deleteTodoPosition {
    _$deleteTodoPositionAtom.reportRead();
    return super.deleteTodoPosition;
  }

  @override
  set deleteTodoPosition(int? value) {
    _$deleteTodoPositionAtom.reportWrite(value, super.deleteTodoPosition, () {
      super.deleteTodoPosition = value;
    });
  }

  late final _$deleteTodoAtom =
      Atom(name: 'TodoControllerBase.deleteTodo', context: context);

  @override
  Todo? get deleteTodo {
    _$deleteTodoAtom.reportRead();
    return super.deleteTodo;
  }

  @override
  set deleteTodo(Todo? value) {
    _$deleteTodoAtom.reportWrite(value, super.deleteTodo, () {
      super.deleteTodo = value;
    });
  }

  late final _$todosAtom =
      Atom(name: 'TodoControllerBase.todos', context: context);

  @override
  List<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  late final _$titleAtom =
      Atom(name: 'TodoControllerBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$errorTextAtom =
      Atom(name: 'TodoControllerBase.errorText', context: context);

  @override
  String? get errorText {
    _$errorTextAtom.reportRead();
    return super.errorText;
  }

  @override
  set errorText(String? value) {
    _$errorTextAtom.reportWrite(value, super.errorText, () {
      super.errorText = value;
    });
  }

  late final _$isCheckedAtom =
      Atom(name: 'TodoControllerBase.isChecked', context: context);

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  late final _$TodoControllerBaseActionController =
      ActionController(name: 'TodoControllerBase', context: context);

  @override
  void Checked() {
    final _$actionInfo = _$TodoControllerBaseActionController.startAction(
        name: 'TodoControllerBase.Checked');
    try {
      return super.Checked();
    } finally {
      _$TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic todosRemove() {
    final _$actionInfo = _$TodoControllerBaseActionController.startAction(
        name: 'TodoControllerBase.todosRemove');
    try {
      return super.todosRemove();
    } finally {
      _$TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic todosInsert() {
    final _$actionInfo = _$TodoControllerBaseActionController.startAction(
        name: 'TodoControllerBase.todosInsert');
    try {
      return super.todosInsert();
    } finally {
      _$TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clear() {
    final _$actionInfo = _$TodoControllerBaseActionController.startAction(
        name: 'TodoControllerBase.clear');
    try {
      return super.clear();
    } finally {
      _$TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic delete(Todo todo) {
    final _$actionInfo = _$TodoControllerBaseActionController.startAction(
        name: 'TodoControllerBase.delete');
    try {
      return super.delete(todo);
    } finally {
      _$TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todo: ${todo},
todoController: ${todoController},
todoRepository: ${todoRepository},
deleteTodoPosition: ${deleteTodoPosition},
deleteTodo: ${deleteTodo},
todos: ${todos},
title: ${title},
errorText: ${errorText},
isChecked: ${isChecked}
    ''';
  }
}
