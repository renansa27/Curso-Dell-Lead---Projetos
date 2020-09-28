import 'package:flutter/material.dart';
import 'package:to_do_list/model/task_model.dart';

class UpdateTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TaskModel task = ModalRoute.of(context).settings.arguments;
    final controllerTextField = TextEditingController(text: task.taskTitle);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Atualizar tarefa'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: controllerTextField,
              onChanged: task.setTextTitle,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.add_comment),
                hintText: 'Digite um tarefa...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text('Atualizar Tarefa'),
              color: Colors.blue[300],
              onPressed: () {
                task.setTextTitle(task.taskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
