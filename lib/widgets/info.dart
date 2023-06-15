import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/task_blocs.dart';
import '../blocs/task_states.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.white,
            child: Icon(
              Icons.menu,
              size: MediaQuery.of(context).size.width * 0.10,
              color: Colors.lightBlueAccent,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),
          Text(
            "Todoey",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.1),
          ),
          BlocBuilder<TaskBlocs, TaskStates>(builder: (context, state) {
            return Text(
              "${state.tasks.length} task",
              style: TextStyle(color: Colors.white),
            );
          })
        ],
      ),
    );
  }
}
