import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_list/controller/home_controller.dart';

import 'widgets/task_widget.dart';

class Home extends StatelessWidget {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
