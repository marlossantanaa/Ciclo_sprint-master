import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import '../../model/list_model.dart';
import '../../repository/list_repository.dart';

part 'list_controller.g.dart';

class TodoController = TodoControllerBase with _$TodoController;

abstract class TodoControllerBase with Store {

  @observable
  Todo? todo;

  @observable
  TextEditingController todoController = TextEditingController();

  @observable
  TodoRepository todoRepository = TodoRepository();


  @observable
  int? deleteTodoPosition;

  @observable
  Todo? deleteTodo;

  @observable
  List<Todo> todos = [];

  @observable
  String title = '';

  @observable
  String? errorText;

  @observable
  bool isChecked = false;

  @action
  void Checked() {
    isChecked = true;
  }


  @action
  todosRemove(){
  todos.remove(todo);
  }
  @action
  todosInsert() {
    todos.insert(deleteTodoPosition!, deleteTodo!);
  }

  @action
  clear(){
    todos.clear();
    todoRepository.saveTodoList(todos);
  }


  @action
  onDelete(Todo todo) {
     onDelete(todo);
  }

  @action
  delete(Todo todo) {
      deleteTodo = todo;
      deleteTodoPosition = todos.indexOf(todo);
      todos.remove(todo);
      todoRepository.saveTodoList(todos);
    }
  }



