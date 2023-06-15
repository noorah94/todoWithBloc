import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/task_blocs.dart';
import '../blocs/task_states.dart';
import 'Task.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BlocBuilder<TaskBlocs, TaskStates>(
        builder: (context, state) => ListView(
          children: state.tasks
              .mapIndexed(
                (index, element) => Task(
                  index: index,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
