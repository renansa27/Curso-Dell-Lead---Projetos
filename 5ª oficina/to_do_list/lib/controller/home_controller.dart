import 'package:mobx/mobx.dart';
import 'package:to_do_list/model/task_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<TaskModel> taskList = ObservableList.of([]);

  @action
  addTask(TaskModel task) {
    taskList.add(task);
  }

  @action
  removeTask(TaskModel taskModel) {
    taskList.removeWhere((task) => task.taskTitle == taskModel.taskTitle);
  }
}
