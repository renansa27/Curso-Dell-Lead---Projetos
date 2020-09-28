import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_list/model/task_model.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel task;
  final Function removeClicked;

  const TaskWidget({Key key, this.task, this.removeClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(task.taskTitle),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/updateTask',
                          arguments: task,
                        );
                      }),
                  SizedBox(width: 10),
                  IconButton(
                      icon: Icon(Icons.delete), onPressed: removeClicked),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
