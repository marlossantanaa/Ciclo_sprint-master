
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/list_model.dart';

class TodoRepository{
  late SharedPreferences sharedPreferences;

  Future <List<Todo>> getTodoList() async{
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString('todo_list') ?? '[]';
    final List jsonDecoded = json.decode(jsonString)as List;
    return jsonDecoded.map((e) => Todo.fromJson(e)).toList();
  }
  void saveTodoList(List<Todo>todos) {
    final String jsonString = json.encode(todos);
    sharedPreferences.setString('todo_list',jsonString);
  }
}