import 'package:flutter/material.dart';
import 'package:to_do_list/controller/home_controller.dart';
import 'package:to_do_list/model/task_model.dart';

class NewTask extends StatelessWidget {
  final task = TaskModel();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final HomeController args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Center(
          child: Text('Nova tarefa'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              onChanged: task.setTextTitle,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.add_comment),
                hintText: 'Digite uma tarefa...',
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
              child: Text('Adicionar Tarefa'),
              color: Colors.blue[300],
              onPressed: () {
                if (task.taskTitle.isNotEmpty) {
                  args.addTask(task);
                  Navigator.pop(context);
                } else {
                  _scaffoldKey.currentState.showSnackBar(
                      SnackBar(content: Text('Seu texto não pode ser vazio!')));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
