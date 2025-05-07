import 'package:flutter/material.dart';
import '../text_box_modal.dart';
import '../buttons/delete_cancel_buttons.dart';

class ConfirmDeleteDialog extends StatelessWidget {
  final VoidCallback onDelete;
  final VoidCallback onCancel;

  const ConfirmDeleteDialog({
    super.key,
    required this.onDelete,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: 'Delete Task',
      content: const Text('Are you sure you want to delete this task?'),
      actions: [
        DeleteCancelButtons(onDelete: onDelete, onCancel: onCancel),
      ],
    );
  }
} 