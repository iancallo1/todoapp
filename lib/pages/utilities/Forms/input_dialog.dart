import 'package:flutter/material.dart';
import '../text_box_modal.dart';
import '../buttons/save_cancel_buttons.dart';

class InputDialog extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const InputDialog({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: 'Add New Task',
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Enter task name'),
      ),
      actions: [
        SaveCancelButtons(onSave: onSave, onCancel: onCancel),
      ],
    );
  }
} 