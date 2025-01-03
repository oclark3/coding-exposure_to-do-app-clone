import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_2/view_models/app_view_model.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:to_do_2/views/bottom_sheets/add_task_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder:(context, viewModel, child) {
      return SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: viewModel.clrlvl3,
            foregroundColor: viewModel.clrlvl1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          onPressed:() {
            viewModel.bottomSheetBuilder(
              const AddTaskBottomSheetView(), context);
          },
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      );
    });
  }
}