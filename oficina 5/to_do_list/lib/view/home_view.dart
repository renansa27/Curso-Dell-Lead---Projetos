import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_list/controller/home_controller.dart';

import 'widgets/task_widget.dart';

class Home extends StatelessWidget {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Controle de tarefas'),
      ),
      body: Observer(builder: (_) {
        if (homeController.taskList.isNotEmpty) {
          return ListView.builder(
            itemCount: homeController.taskList.length,
            itemBuilder: (_, index) {
              var task = homeController.taskList[index];
              return TaskWidget(
                task: task,
                removeClicked: () {
                  homeController.removeTask(task);
                },
              );
            },
          );
        } else {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: ListTile(
              title: Text('Nenhuma tarefa adicionada...'),
            ),
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.pushNamed(context, '/newTask', arguments: homeController),
        child: Icon(Icons.add),
      ),
    );
  }
}
