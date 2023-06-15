import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/TaskModel.dart';
import 'task_ events.dart';
import 'task_states.dart';

class TaskBlocs extends Bloc<TaskEvents, TaskStates> {
  TaskBlocs() : super(InitialState()) {
    on<Add>((event, emit) {
      state.tasks.add(TaskModel(event.name));
      emit(TaskStates(tasks: state.tasks));
    });
    on<IsFinish>((event, emit) {
      state.tasks[event.index].setIsFinshed();
      emit(TaskStates(tasks: state.tasks));
    });
  }
}
