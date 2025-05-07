import '../action_buttons.dart';
import 'package:flutter/material.dart';

class SaveCancelButtons extends StatelessWidget {
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const SaveCancelButtons({
    super.key,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return ActionButtons(
      primaryLabel: 'Add',
      onPrimary: onSave,
      secondaryLabel: 'Cancel',
      onSecondary: onCancel,
    );
  }
} 