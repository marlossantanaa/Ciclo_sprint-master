
import 'package:ciclo_sprint2/ui/controller/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../model/list_model.dart';

class TodoListItem extends StatefulWidget {
   const TodoListItem({Key? key, required this.todo, required this.onDelete}) : super(key: key);
  final  Todo todo;
  final Function(Todo) onDelete;

  @override
  State<TodoListItem> createState() => _TodoListItemState();
}

class _TodoListItemState extends State<TodoListItem> {
final controller = TodoController();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder:(_)=> Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Slidable(actionExtentRatio:0.2 ,
          actionPane:const SlidableStrechActionPane(),
          secondaryActions: [
            IconSlideAction(
              color:Colors.redAccent,
              icon: Icons.delete_forever_sharp,
              caption: 'Deletar',
              onTap: () {
                controller.delete;
              },
            ),
          ],child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:[
                Colors.lightBlue.shade50,
                Colors.lightBlue.shade100,
              ],
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.todo.title, style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: controller.isChecked ? Colors.green : Colors.black,
                ),),

              Checkbox(value: controller.isChecked,
                activeColor: Colors.green,
                  onChanged: (value){
                controller.isChecked = value!;
              }),

            ],
          ),
        ),
        ),
      ),
    );
  }
}

