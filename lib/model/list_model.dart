class Todo {
  Todo({required this.title});

  Todo.fromJson(Map<String, dynamic> json) : title = json['title'];

  String title;

  Map<String, dynamic> toJson() {
    return {'title': title};
  }
}
