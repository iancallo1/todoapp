import '../action_buttons.dart';
import 'package:flutter/material.dart';

class DeleteCancelButtons extends StatelessWidget {
  final VoidCallback onDelete;
  final VoidCallback onCancel;

  const DeleteCancelButtons({
    super.key,
    required this.onDelete,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return ActionButtons(
      primaryLabel: 'Delete',
      onPrimary: onDelete,
      secondaryLabel: 'Cancel',
      onSecondary: onCancel,
      primaryColor: Colors.red,
    );
  }
} 