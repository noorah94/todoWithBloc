import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t2_task_todo_blok/blocs/task_%20events.dart';
import '../blocs/task_blocs.dart';
import '../blocs/task_states.dart';

class Task extends StatelessWidget {
  Task({
    super.key,
    required this.index,
  });
  int index;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.lightBlueAccent;
    }

    return BlocBuilder<TaskBlocs, TaskStates>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              state.tasks[index].name,
              style: TextStyle(
                  color: Colors.green,
                  decoration: state.tasks[index].isFinshed
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: state.tasks[index].isFinshed,
              onChanged: (bool? value) {
                BlocProvider.of<TaskBlocs>(context).add(IsFinish(index));
              },
            )
          ],
        );
      },
    );
  }
}
