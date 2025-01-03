import 'package:flutter/material.dart';
import 'package:to_do_2/views/add_task_view.dart';
import 'package:to_do_2/views/header_view.dart';
import 'package:to_do_2/views/task_info_view.dart';
import 'package:to_do_2/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          // Header view
          Expanded(flex: 1, child: HeaderView()),

          // Task summary info view
          Expanded(flex: 1, child: TaskInfoView()),

          // List of tasks view
          Expanded(flex: 7, child: TaskListView()),
        ]),
      ),
      floatingActionButton: const AddTaskView());
  }
}