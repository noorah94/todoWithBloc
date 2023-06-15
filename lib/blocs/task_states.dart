import '../models/TaskModel.dart';

class TaskStates {
  List<TaskModel> tasks;
  TaskStates({required this.tasks});
}

class InitialState extends TaskStates {
  InitialState() : super(tasks: []);
}
