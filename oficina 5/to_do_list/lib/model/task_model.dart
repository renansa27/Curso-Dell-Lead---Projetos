import 'package:mobx/mobx.dart';
part 'task_model.g.dart';

class TaskModel = _TaskModelBase with _$TaskModel;

abstract class _TaskModelBase with Store {
  _TaskModelBase({this.taskTitle = ''});

  @observable
  String taskTitle = '';

  @action
  setTextTitle(String text) => taskTitle = text;
}
