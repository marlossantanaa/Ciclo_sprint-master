import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../model/list_model.dart';
import '../controller/list_controller.dart';
import '../widget/list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TodoController();

  // @override
  // void initState(){
  //   super.initState();
  //   controller.todoRepository.getTodoList().then((value){
  //     setState(() {
  //       controller.todos = value;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Observer(
        builder:(_)=> Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                       Expanded(
                          child: TextField(
                            controller: controller.todoController,
                            decoration:  InputDecoration(
                              border:  const OutlineInputBorder(),
                              labelText: 'Adicionar uma Tarefa',
                              hintText: 'Estudar mais tarde',
                              errorText: controller.errorText,
                              labelStyle:const TextStyle( color: Colors.lightBlue,
                              ),
                            ),
                          ),
                        ),

                      const SizedBox(
                        width: 4,
                      ),
                       ElevatedButton(

                          onPressed: () {
                            String text = controller.todoController.text;
                            if (text.isEmpty){
                                controller.errorText='Adicione uma tarefa!';
                                return;
                            }
                              Todo newtodo = Todo(
                                title: text,
                              );
                              controller.todos.add(newtodo);
                            controller.errorText = null;
                            controller.todoController.clear();
                            controller.todoRepository.saveTodoList(controller.todos);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            padding: const EdgeInsets.all(16),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 32,
                          ),
                        ),

                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Observer(
                    builder:(_)=> Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          for (Todo todo in controller.todos)
                            TodoListItem(
                              todo: todo,
                              onDelete: controller.delete,
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Suas tarefas pendentes : ${controller.todos.length}',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
